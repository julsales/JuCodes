#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef struct Node {
    char nome[30];
    struct Node *next;
} Node;


void queue(Node **head, Node **tail, char **paciente){
    Node *novo = (Node *)malloc(sizeof(Node));
    if (novo!=NULL) {
        strcpy(novo->nome,*paciente);
        novo->next=NULL;
        if (*head == NULL) {
            *head = novo;
            *tail = novo;
        } else {
            (*tail)->next = novo;
            *tail = novo;
        }
    }
}

void unqueue(Node **head, Node **tail) {
    Node *aux;
    char paciente[30];
    if (*head !=NULL) {

    }
}


int main(void) {
    Node *head=NULL;
    Node *tail=NULL;
    while(1) {
        int n;
        scanf("Digite um número de 1 a 5 %d",&n);
        if (n==1) {
            char paciente[30];
            scanf("%s", paciente);
            queue(&head,&tail,paciente);
        }if (n==2) {

        }if (n==3) {

        }if (n==4) {

        }if (n==5) {
            break;
        }
    }

}
