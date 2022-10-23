#include <stdio.h>

int main(){
    int a[20]={6,-11,6,20,-50,22,-27,43,-1,6,-21,-11,20,1,5,-3,-12,-12,28,14};
    int b[21]={6,-11,6,20,-50,22,2,6,11,-13,0,-6,24,-14,11,-12,-9,26,-10,6,8};
    char c=102,x;
    printf("Is Meo super cool?(y/n)\n");
    scanf("%c",&x);
    if(x=='n'){
        printf("%c",c);
        for(int i=0;i<=19;i++){
            c+=a[i];
            printf("%c",c);
        }
    }
    else if(x=='y'){
        printf("%c",c);
        for(int i=0;i<=20;i++){
            c+=b[i];
            printf("%c",c);
        }
    }
    return 0;
}