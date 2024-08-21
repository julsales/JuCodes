#include <stdio.h>

void calcular_media (int *A, int *B){
    int media, res;
    media = (*A+*B)/2;
    res = (*A+*B)%2;
    if (*A < *B){
        *A = media;
        *B = res;
    }else{
        *B = media;
        *A = res;
    }
}
int main() {
    int A, B;
    scanf("%d %d", &A, &B);
    calcular_media(&A, &B);
    printf("%d\n %d", A, B);
    return 0;
}