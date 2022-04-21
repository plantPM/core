// Include standard libraries
// stdio.h for printf (and other functions)
// stdlib.h for running system commands
// string.h for string functions
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// install function
int install(){
    // Ask user for package name
    printf("What to install?\n");
    // get input
    char input[100];
    scanf("%s", input);
    // check if input is valid
    // if valid, install
    // else, print error
    printf("Installing %s\n", input);
    char cmd[100];
    char install_cmd[100];
    char remove_cmd[100];
    sprintf(cmd, "curl -sOL https://raw.githubusercontent.com/plantPM/leave/main/packages/%s.sh", input);
    sprintf(install_cmd, "sh %s.sh", input);
    sprintf(remove_cmd, "rm %s.sh", input);
    system(cmd);
    system(install_cmd);
    system(remove_cmd);
    return 0;
}

int main()
{
    install();
    return 0;
}