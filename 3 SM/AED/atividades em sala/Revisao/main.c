#include <stdio.h>
#include <stdlib.h>

typedef struct Arv {
    int n;
    struct Arv *esq;
    struct Arv *dir;
}Arv;

void inserir(Arv **raiz, int num) {
    if(*raiz==NULL) {
        *raiz = (Arv*)malloc(sizeof(Arv));
        (*raiz)->esq=NULL;
        (*raiz)->dir=NULL;
        (*raiz)->n=num;
    }else{
        if(num < (*raiz)->n){
            inserir(&(*raiz)-> esq, num);
        }if(num > (*raiz)->n) {
            inserir(&(*raiz)->dir,num);
        }
    }
}
int altura(Arv *raiz) {
    if (raiz==NULL) {
        return 0;
    }else{
        int alturaEsq=altura(raiz->esq);
        int alturaDir=altura(raiz->dir);
        if(alturaEsq>alturaDir) {
            return alturaEsq + 1;
        }
        if (alturaEsq<alturaDir) {
            return alturaDir + 1;
        }
    }
}
void inordem(Arv *raiz) {
    if (raiz != NULL) {
        inordem(raiz->esq);
        printf("%d ", raiz->n);
        inordem(raiz->dir);
    }
}

int main(void)
{
    Arv *raiz = NULL;
    inserir(&raiz, 48);
    inserir(&raiz, 30);
    inserir(&raiz, 82);
    inserir(&raiz, 15);
    inserir(&raiz, 37);
    inserir(&raiz, 61);
    inserir(&raiz, 98);
    inordem(raiz);
    printf("%d", altura(raiz));
    return 0;
}
