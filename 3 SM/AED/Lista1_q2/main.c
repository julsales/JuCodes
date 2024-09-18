#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node {
    char nome[50];
    int tamanho;
    struct Node *next;
    struct Node *prev;
}Node;

void inserir(Node **head, char *nome) {
    Node *novo= (Node *)malloc(sizeof(Node));
    if (novo!=NULL) {
        strcpy(novo->nome,nome);
        novo->tamanho=strlen(nome);
        novo->next=*head;
        novo->prev=NULL;
    }
    if(head!=NULL) {
        (*head)->prev=novo;
    }
    *head=novo;
}
void remover(Node **head) {
    if (*head !=NULL) {
        Node *aux=*head;
        *head=aux->next;
        free(aux);
        if (*head !=NULL) {
            (*head)->prev=NULL;
        }
    }
}

void printar_ordenado(Node *head) {
    Node *aux=head;
    while(aux->next==NULL) {

    }

}

void amigo_habay() {

}

int main(void){
    Node *headNao = NULL;
    Node *headSim = NULL;
    char nome[50];
    char amizade[4];
    do {
        scanf("%s",nome);
        scanf("%s",amizade);
        if (strcmp(amizade,"SIM")==0) {
            inserir(&headSim,nome);
        }else if(strcmp(amizade,"NAO")==0) {
            inserir(&headNao,nome);
        }
    }while(nome!="FIM");

    while (headSim!=NULL) {
        remover(&headSim);
    }
    while (headNao!=NULL) {
        remover(&headNao);
    }
    return 0;
}
