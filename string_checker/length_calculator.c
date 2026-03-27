#include<stdio.h>

int main(int argc, char *argv[]){

    char *a = argv[1];
    int sum = 0;
    int i;
    for (i=0;;i++) {//not using a limit like i <30 because break stops the loop always
        if (a[i] == '\0') {//using the escape character at the end as a size
            break;
        } else {
          sum += 1;
        }
    }
    printf("%d",sum);
    return 0;
}



