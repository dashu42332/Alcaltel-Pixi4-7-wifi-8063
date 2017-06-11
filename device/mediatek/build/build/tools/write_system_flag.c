#include<stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define DEBUG

int main( int argc , char* argv[] )
{
	//char flag ="109f10eed3f021e3";
	char *flag =argv[3];
	off_t offset = atoi(argv[2]);
	char buffer[17];
	char *systemimage = argv[1];
	int fd;

	if(argc != 4){
		printf("args error,expect systemimage offset flags\n");
		exit(0);
	}
	printf("argc:%d argv[1]=%s,argv[2]=0x%x,argv[3]=%s \n", argc , systemimage , offset , flag );

	fd = open( systemimage , O_RDWR );
	lseek( fd , offset , SEEK_SET );
	write( fd , flag , 16 );
	printf( "write [%s] offset[0x%x] flag:[%s]  \n" , systemimage , offset , flag );
	close( fd );

#ifdef DEBUG
	fd = open( systemimage , O_RDONLY);
	lseek( fd , offset , SEEK_SET );
	read( fd , buffer , 16 );
	buffer[16] = 0;
	printf( "read [%s] offset[0x%x] flag:[%s]  \n", systemimage , offset , buffer );
	close( fd );
#endif

	return 0;
}
