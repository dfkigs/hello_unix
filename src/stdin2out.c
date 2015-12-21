#include "apue.h"

#define BUFFSIZE	4096

/* we can test this function with below :
	./stdin2out			  ==> when you enter some words and press enter, the words will be print to stdout
	./stdin2out < input   ==> just like cat filename
	./stdin2out < input > output ==> the output will be a copy of filename
	......
*/
int main(void)
{
	int n;
	char buf[BUFFSIZE];

	while ((n = read(STDIN_FILENO, buf, BUFFSIZE)) > 0)
	{
		if (write(STDOUT_FILENO, buf, n) != n)
			err_sys("write error");
	}
	if (n < 0)
		err_sys("read error");

	exit(0);
}
