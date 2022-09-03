#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>

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
						if (fabs(a[j][k]) >= largest) {
							largest = fabs(a[j][k]);
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
	n = 8;
	//Poor contitioned test matrix with condition number 255.1992 (infinite norm)
	a[0][0] = 1; a[0][1] = 4; a[0][2] = 3; a[0][3] = 7; a[0][4] = 8; a[0][5] = 7; a[0][6] = 1; a[0][7] = 5;
	a[1][0] = 4; a[1][1] = 2; a[1][2] = 6; a[1][3] = 6; a[1][4] = 8; a[1][5] = 14; a[1][6] = 1; a[1][7] = 5;
	a[2][0] = 2; a[2][1] = 4; a[2][2] = 3; a[2][3] = 4; a[2][4] = 1; a[2][5] = 5; a[2][6] = 14; a[2][7] = 12;
	a[3][0] = 1; a[3][1] = 1; a[3][2] = 2; a[3][3] = 6; a[3][4] = 2; a[3][5] = 3; a[3][6] = 1; a[3][7] = 4;
	a[4][0] = 2; a[4][1] = 5; a[4][2] = 8; a[4][3] = 4; a[4][4] = 1; a[4][5] = 3; a[4][6] = 7; a[4][7] = 3;
	a[5][0] = 3; a[5][1] = 9; a[5][2] = 3; a[5][3] = 4; a[5][4] = 5; a[5][5] = 4; a[5][6] = 12; a[5][7] = 5;
	a[6][0] = 7; a[6][1] = 13; a[6][2] = 9; a[6][3] = 7; a[6][4] = 3; a[6][5] = 2; a[6][6] = 7; a[6][7] = 3;
	a[7][0] = 15; a[7][1] = 16; a[7][2] = 8; a[7][3] = 2; a[7][4] = 4; a[7][5] = 7; a[7][6] = 9; a[7][7] = 4;

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