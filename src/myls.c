#include "apue.h"
#include <dirent.h>

/*
	myls is like a simple ls, can only print folder's name
*/
int main(int argc, char *argv[])
{
	DIR	*dp;
	struct dirent	*dirp;

	if (argc != 2)
		err_quit("usage : ls directory_name!");

	if ((dp = opendir(argv[1])) == NULL)
		err_sys("can't open %s", argv[1]);

	while ((dirp = (struct dirent*)readdir(dp)) != NULL)
		printf ("%s\n", dirp->d_name);

	closedir(dp);
	exit(0);
}
