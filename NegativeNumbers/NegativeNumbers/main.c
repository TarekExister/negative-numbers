#include <stdio.h>
#include <stdbool.h>

extern bool Check_Negative_Numbers(int *arr, int size);

int main(void)
{
#define sz 5
	int array_1[sz] = { 22,2,3,4,5 };
	bool found = Check_Negative_Numbers(&array_1, sz);

	printf("%i\n", found);

	return 0;
}