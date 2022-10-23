#include <stdio.h>

int main(){
    char c=102,x;
    int a[30]={6,-11,6,20,-34,22,6,-22,19,-13,-4,11,0,13,-26,12,3,1,8,-24,4,12,-2,3,-7,3,-3,5,-7,22};
    printf("Press F to respect\n");
    scanf("%c",&x);
    if(x=='F'){
        printf("%c",c);
        for(int i=0;i<=29;i++){
            c+=a[i];
            printf("%c",c);
        }
    }
    return 0;
}