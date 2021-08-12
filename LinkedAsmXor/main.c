#include <stdio.h>

extern int singlechar_xor(char* input_bytes, char key_value, char* output_bytes);

char input_bytes[100];
char key_value;
char output_bytes[100];

int main(int argc, char* argv[])
{
	scanf("%[^\n]%*c", input_bytes);
	scanf("%c", &key_value);

	singlechar_xor(input_bytes, key_value, output_bytes);
	printf("%s\n", output_bytes);
	
	return 0;
}