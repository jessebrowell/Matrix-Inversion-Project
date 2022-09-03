#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int n;

float a[8][8];

int pivot[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

float dum, pivotinv, largest;

int i, j, k, irow, icol, l, indexrow[8], indexcol[8], p;

void pivoting() {
	for (i = 0; i < n; i++) {
		//Finds the largest coefficient to pivot into the correct place
		largest = 0;
		for (j = 0; j < n; j++) {
			if (pivot[j] != 1) {
				for (k = 0; k < n; k++) {
					if (pivot[k] == 0) {
						if (abs(a[j][k]) >= largest) {
							largest = abs(a[j][k]);
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
			for (l = 0; l < n; l++) {
				dum = a[irow][l];
				a[irow][l] = a[icol][l];
				a[icol][l] = dum;
			}
		}

		indexrow[i] = irow;
		indexcol[i] = icol;
	}
}

void row_reduction() {
	for (i = 0; i < n; i++) {
		irow = indexrow[i];
		icol = indexcol[i];

		if (a[icol][icol] == 0.0) {
			printf("No inverse exists");
		}

		float pivot_place = a[icol][icol];

		a[icol][icol] = 1.0;

		//Divides pivot row by its pivot element
		for (l = 0; l < n; l++) {
			a[icol][l] = (a[icol][l] / pivot_place);
		}

		//Row reduce all rows except for the pivot row
		for (p = 0; p < n; p++) {
			if (p != icol) {
				dum = a[p][icol];
				a[p][icol] = 0.0;
				for (l = 0; l < n; l++) {
					a[p][l] = a[p][l] - (a[icol][l] * dum);
				}
			}
		}
	}
}

void reverse_pivot() {
	//Reverses pivot operations to retrieve final result
	for (l = (n - 1); l >= 0; l--) {
		if (indexrow[l] != indexcol[l]) {
			for (k = 0; k < n; k++) {
				dum = a[k][indexrow[l]];
				a[k][indexrow[l]] = a[k][indexcol[l]];
				a[k][indexcol[l]] = dum;
			}
		}
	}
}

void print_result() {
	//Prints final result
	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			printf("%f, ", a[i][j]);
		}
		printf("\n");
	}
}

int main() {
	n = 3;
	//Well contitioned test matrix with condition number 4.2182 (infinite norm)
	a[0][0] = 0; a[0][1] = 5; a[0][2] = 0;
	a[1][0] = 3; a[1][1] = 0; a[1][2] = 1;
	a[2][0] = 1; a[2][1] = 3; a[2][2] = 4;

	clock_t begin = clock();
	pivoting();
	row_reduction();
	reverse_pivot();
	clock_t end = clock();
	double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	print_result();
	printf("Time spent: %f\n", time_spent);

	return(0);
}