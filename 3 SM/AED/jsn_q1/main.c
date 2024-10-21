#include <stdio.h>
#include <stdlib.h>

typedef struct Node{
    int valor;
    struct Node *prox;
    struct Node *ant;
} Node;

void inserir(Node **head, int valor) {
    Node *novo = (Node*)malloc(sizeof(Node));
    if (novo != NULL){
        novo->valor = valor;
        novo->prox = *head;
        novo->ant = NULL;

        if(*head!=NULL){
            (*head)->ant = novo;
        }
        *head = novo;
    }
}
void remover(Node **head) {
    if(*head != NULL){
        Node *aux = *head;
        *head = aux->prox;
        free(aux);
        if(*head != NULL)
            (*head)->ant = NULL;
    }
}
void liberar(Node **head) {
    while (*head != NULL) {
        remover(head);
    }
}

int ordenar(Node **head){
    Node *temp= *head;
    int cont = 0;
    int trocas=0;
    while (temp != NULL) {
        cont++;
        temp = temp->prox;
    }
    for(int i=0; i<cont-1;i++){
        int auxValor;
        Node *aux = *head;
        for(int j=0; j<cont-i-1;j++){
            if (aux->valor < aux->prox->valor){
                auxValor=aux->valor;
                aux->valor=aux->prox->valor;
                aux->prox->valor = auxValor;
                trocas++;
            }
            aux=aux->prox;
        }
    }
    return trocas;
}

int main(void) {
    int N;
    scanf("%d", &N);

    for (int i=0; i<N; i++) {
        Node *head = NULL;
        int L;
        scanf("%d", &L);

        for (int j=0; j<L; j++) {
            int valor;
            scanf("%d", &valor);
            inserir(&head, valor);
        }
        printf("Optimal train swapping takes %d swaps.\n", ordenar(&head));
        liberar(&head);
    }
}
