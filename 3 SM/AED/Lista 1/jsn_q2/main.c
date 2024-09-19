#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node {
    char nome[50];
    struct Node *next;
    struct Node *prev;
} Node;

void inserir(Node **head, char *nome) {
    Node *novo = (Node*)malloc(sizeof(Node));
    Node *aux = *head;
    while (aux!=NULL){
        if(strcmp(aux->nome,nome)==0){
            return;
        }else{
            aux= aux->next;
        }
    }
    strcpy(novo->nome,nome);
    novo->next = NULL;
    novo->prev = NULL;
    if (*head==NULL){
        *head=novo;
    } else {
        aux = *head;
        while (aux->next != NULL) {
            aux = aux->next;
        }
        aux->next = novo;
        novo->prev = aux;
    }
}

void remover(Node **head) {
    if (*head != NULL) {
        Node *aux = *head;
        *head = aux->next;
        free(aux);
        if (*head != NULL) {
            (*head)->prev = NULL;
        }
    }
}

int tamanho_node(Node *head) {
    int cont = 0;
    Node *aux=head;
    while( aux != NULL) {
        aux = aux->next;
        cont++;
    }
    return(cont);
}

void printar(Node *head) {
    int len = tamanho_node(head);
    char** nomes = (char**)malloc(len * sizeof(char*));
    Node *aux=head;
    for(int i=0; i<len; i++){
        nomes[i]=aux->nome;
        aux=aux->next;
    }
    for(int i = 1;i<=len-1; i++){
        for(int j=len-1; j>=i; j--){
            if (strcmp(nomes[j],nomes[j-1])<0){
                char aux2[50];
                strcpy(aux2,nomes[j]);
                strcpy(nomes[j],nomes[j-1]);
                strcpy(nomes[j-1],aux2);
            }
        }
    }
    for(int i=0; i<len; i++){
        printf("%s",nomes[i]);
        printf("\n");
    }
    free(nomes);
}

void amigos_habay(Node *head) {
    if (head == NULL) {
        return;
    }
    Node *aux = head;
    Node *escolhido = head;

    while (aux != NULL) {
        if (strlen(aux->nome) > strlen(escolhido->nome)) {
                escolhido = aux;
        }
        aux = aux->next;
    }
    printf("Amigo do Habay:\n%s\n", escolhido->nome);
}


int main(void) {
    Node *headNao = NULL;
    Node *headSim = NULL;
    char nome[50];
    char amizade[4];

    while(1) {
        scanf("%s", nome);
        if (strcmp(nome, "FIM") == 0){
            break;
        }
        scanf("%s", amizade);

        if (strcmp(amizade, "YES") == 0) {
            inserir(&headSim, nome);
        } else if (strcmp(amizade, "NO") == 0) {
            inserir(&headNao, nome);
        }
    }
    printar(headSim);
    printar(headNao);
    printf("\n");
    amigos_habay(headSim);

    while (headSim != NULL) {
        remover(&headSim);
    }
    while (headNao != NULL) {
        remover(&headNao);
    }

    return 0;
}
