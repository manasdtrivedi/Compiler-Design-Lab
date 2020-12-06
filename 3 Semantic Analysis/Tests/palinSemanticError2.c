
// Semantic error - Integer 'i' is declared twice in the same scope.

#include<stdio.h>

int main(){
	int lengthOfStr = 9;
	char str[9] = "a1b2c2b1a";
	int i;
	int i;
	for(i = 0; i < lengthOfStr / 2; i++){
		if(str[i] != str[lengthOfStr - i - 1]){
			printf("String is not a palindrome.\n");
			return 0;
		}
	}
	if(lengthOfStr % 2 != 1){
		printf("Not an odd length palindrome.\n");
		return 0;
	}
	printf("String is a palindrome.\n");
	return 0;
}

