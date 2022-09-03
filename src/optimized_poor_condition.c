#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

int main() {
	int b = 13;
	//Poor contitioned test matrix with condition number 255.1992 (infinite norm)
	int a[8][8] = { {1 << b, 4 << b, 3 << b, 7 << b, 8 << b, 7 << b, 1 << b, 5 << b},
				{4 << b, 2 << b, 6 << b, 6 << b, 8 << b, 14 << b, 1 << b, 5 << b},
				{2 << b, 4 << b, 3 << b, 4 << b, 1 << b, 5 << b, 14 << b, 12 << b},
				{1 << b, 1 << b, 2 << b, 6 << b, 2 << b, 3 << b, 1 << b, 4 << b},
				{2 << b, 5 << b, 8 << b, 4 << b, 1 << b, 3 << b, 7 << b, 3 << b},
				{3 << b, 9 << b, 3 << b, 4 << b, 5 << b, 4 << b, 12 << b, 5 << b},
				{7 << b, 13 << b, 9 << b, 7 << b, 3 << b, 2 << b, 7 << b, 3 << b},
				{15 << b, 16 << b, 8 << b, 2 << b, 4 << b, 7 << b, 9 << b, 4 << b} };

	int pivot[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

	int temp_val, largest, pivotinv;

	int i, j, k, irow, icol, indexrow[8], indexcol[8];

	clock_t begin = clock();

	for (i = 0; i < 8; i++) {
		//Finds the largest coefficient to pivot into the correct place
		largest = 0;
		for (j = 0; j < 8; j++) {
			if (pivot[j] != 1) {
				for (k = 0; k < 8; k++) {
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
			for (j = 0; j < 8; j++) {
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

		pivotinv = (1 << b) * (1 << b) / a[icol][icol];
		a[icol][icol] = 1 << b;

		//Divides pivot row by its pivot element
		for (j = 0; j < 8; j++) {
			a[icol][j] = (a[icol][j] * pivotinv) >> b;
		}

		//Row reduce all rows except for the pivot row
		for (j = 0; j < 8; j++) {
			if (j != icol) {
				temp_val = a[j][icol];
				a[j][icol] = 0.0;
				for (k = 0; k < 8; k++) {
					a[j][k] = a[j][k] - ((a[icol][k] * temp_val) >> b);
				}
			}
		}
	}

	//Reverses pivot operations to retrieve final result
	for (i = 7; i >= 0; i--) {
		if (indexrow[i] != indexcol[i]) {
			for (k = 0; k < 8; k++) {
				temp_val = a[k][indexrow[i]];
				a[k][indexrow[i]] = a[k][indexcol[i]];
				a[k][indexcol[i]] = temp_val;
			}
		}
	}

	clock_t end = clock();
	double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;

	//Prints final result
	for (i = 0; i < 8; i++) {
		for (j = 0; j < 8; j++) {
			printf("%.3f, ", (float)(a[i][j]) / 8192);
		}
		printf("\n");
	}

	printf("Time spent: %f\n", time_spent);

	return(0);
}