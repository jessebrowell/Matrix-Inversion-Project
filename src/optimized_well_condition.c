#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

int main() {
	//Well contitioned test matrix with condition number 4.2182 (infinite norm)
	int a[3][3] = { {0 << 14, 5 << 14, 0 << 14},		//Numbers scaled by 16384
					 {3 << 14, 0 << 14, 1 << 14},
					 {1 << 14, 3 << 14, 4 << 14} };

	int pivot[3] = { 0, 0, 0 };

	int temp_val, largest, pivotinv;

	int i, j, k, irow, icol, indexrow[3], indexcol[3];

	clock_t begin = clock();

	for (i = 0; i < 3; i++) {
		//Finds the largest coefficient to pivot into the correct place
		largest = 0;
		for (j = 0; j < 3; j++) {
			if (pivot[j] != 1) {
				for (k = 0; k < 3; k++) {
					if (pivot[k] == 0) {
						temp_val = abs(a[j][k]);
						if (temp_val >= largest) {
							largest = temp_val;
							irow = j;
							icol = k;
						}
					}
				}
			}
		}
		pivot[icol] = pivot[icol] + 1;

		//Pivoting Happens
		if (irow != icol) {
			for (j = 0; j < 3; j++) {
				temp_val = a[irow][j];
				a[irow][j] = a[icol][j];
				a[icol][j] = temp_val;
			}
		}

		indexrow[i] = irow;
		indexcol[i] = icol;

		if (a[icol][icol] == 0.0) {
			printf("No inverse exists");
			return(0);
		}

		pivotinv = (1 << 14) * (1 << 14) / a[icol][icol];
		a[icol][icol] = 1 << 14;

		//Divides pivot row by its pivot element
		for (j = 0; j < 3; j++) {
			a[icol][j] = (a[icol][j] * pivotinv) >> 14;
		}

		//Row reduce all rows except for the pivot row
		for (j = 0; j < 3; j++) {
			if (j != icol) {
				temp_val = a[j][icol];
				a[j][icol] = 0.0;
				for (k = 0; k < 3; k++) {
					a[j][k] = a[j][k] - ((a[icol][k] * temp_val) >> 14);
				}
			}
		}
	}

	//Reverses pivot operations to retrieve final result
	for (i = 2; i >= 0; i--) {
		if (indexrow[i] != indexcol[i]) {
			for (k = 0; k < 3; k++) {
				temp_val = a[k][indexrow[i]];
				a[k][indexrow[i]] = a[k][indexcol[i]];
				a[k][indexcol[i]] = temp_val;
			}
		}
	}

	clock_t end = clock();
	double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;

	//Prints final result
	for (i = 0; i < 3; i++) {
		for (j = 0; j < 3; j++) {
			printf("%.4f, ", (float)(a[i][j]) / 16384);
		}
		printf("\n");
	}

	printf("Time spent: %f\n", time_spent);

	return(0);
}