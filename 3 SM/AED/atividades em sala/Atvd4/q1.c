#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Aluno {
    char nome[30];
    struct Aluno *next;
}  Aluno ;

void push(Aluno **head, char nome[30]){
    Aluno *novo = (Aluno *)(malloc(sizeof(Aluno)));
    if(novo!=NULL) {
        strcpy(novo->nome,nome);
        novo->next = *head;
        *head=novo;
    }
}
void print(Aluno *head) {
    Aluno *temp=head;
    if (head==NULL) {
        printf("\n Lista vazia");
        return;
    }
    while(temp->next !=NULL) {
        temp=temp->next;
    }
    printf("A base da pilha e: %s\n",temp->nome);
}

void posicoesPares(Aluno *head) {
    Aluno *temp=head;
    int cont=1;
    if (head==NULL) {
        printf("\n Lista vazia");
        return;
    }
    while(temp->next!=NULL) {
        if(cont %2 ==0) {
            printf("Posicao %d e %s\n",cont,temp->nome);

        }
        temp=temp->next;
        cont++;
    }
}

int main(void){
    Aluno *head=NULL;
    int opc;
    while(1) {
        printf("1 - Inserir novo aluno\n");
        printf("2 - Imprimir base da pilha\n");
        printf("3 - Imprimir nomes nas posicoes pares\n");
        printf("4 - Sair\n");
        scanf("%d",&opc);
        getchar();
        if(opc==1) {
            char nome[30];
            printf("\n Digite o nome do aluno: ");
            fgets(nome,sizeof(nome),stdin);
            push(&head,nome);
        }
        if(opc==2) {
            print(head);
        }
        if(opc==3) {
            posicoesPares(head);
        }
        if(opc==4) {
            break;
        }
    }
    Aluno *temp;
    while (head != NULL) {
        temp = head;
        head = head->next;
        free(temp);
    }

}

