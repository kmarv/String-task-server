#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include<time.h>

struct login{

	char fname[100];
	char lname[100];
	char username[20];
	char password[20];
}details;

  void login()
{
	time_t at; 
    time(&at);
	char username[20], password[20];
	FILE *fptr;
	fptr = fopen("users.txt", "r");
	printf("UserID:");
	scanf("%s", username);
	printf("password:");
	scanf("%s", password);

	while(fread(&details, sizeof(details),1,fptr))
	{
		if (strcmp(username, details.username) ==0 && strcmp(password, details.password) == 0)
		{
			printf("login successful\n");
			printf("\nlogged in at %s", ctime(&at));
			FILE *log;
			log = fopen("logs.txt", "a");
			fprintf(log, "%s,%s,", username, ctime(&at));
			fclose(log);
			system("./a.out");

		}
		else {
			printf("Please Enter correct UserID and Password\n");
			break;
		}
	}

}


 void regist()
{
	char child[] = "client.c";
	FILE *fptr;
	fptr = fopen("users.txt", "w");
	printf("Enter first name :");
	scanf("%s", details.fname);
	printf("Enter last name :");
	scanf("%s", details.lname);
	printf("Enter username :");
	scanf("%s", details.username);
	printf("Enter password :");
	scanf("%s", details.password);

	fwrite(&details, sizeof(details),1,fptr);

	fclose(fptr);

	printf("\n\nyour username is userID \n");
	printf("Now login with userID and password\n");
	login();
	system("./a.out");
	
}


int main(int argc, char const *argv[])
{
 	int choice;
   printf("\nnew users should Enter '1' to register\n old users Enter '2' to login into system");
   printf("\n'1' - register\t\t'2' - login\n  ");
   printf(" Enter number :");
   scanf("%d", &choice);
 	if (choice == 1)
 	{
 		regist();
 	}
 	else if (choice == 2)
 	{
 		login();
 	}
 	return 0;
 }







