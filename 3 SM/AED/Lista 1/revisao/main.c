#include <stdio.h>
#include <stdlib.h>

typedef struct Node{
    int valor;
    struct Node *prox;
    struct Node *ant;
} Node;

void inserir(Node **head,Node **tail, int valor);
void remover(Node **head, Node **tail);
void imprimir(Node *head);
int tamanho(Node *head);

int main() {
    //Criação da lista
    Node *head = NULL;
    Node *tail = NULL;

    //inserção de nós
    inserir(&head, &tail, 35);
    inserir(&head, &tail, 47);
    inserir(&head, &tail, 87);
    inserir(&head, &tail, 29);

    //tamanho da lista
    printf("\nTamanho: %d \n", tamanho(head));
    //impressão da lista
    printf("\nLista: ");
    imprimir(head);

    remover(&head,&tail);

    //tamanho da lista
    printf("\nTamanho: %d \n", tamanho(head));
    //impressão da lista
    printf("\nLista: ");
    imprimir(head);

}

//insere um novo nó na lista
void inserir(Node **head, Node **tail, int valor) {
    Node *novo = (Node *) malloc(sizeof(Node));
    if (novo!=NULL){
        novo->valor = valor;
        novo->prox = NULL;
        novo->ant=NULL;
        if (*head == NULL){
            *head=novo;
            *tail=novo;
        }else{
            //tail anterior tem seu proximo como novo
            (*tail)->prox=novo;
            //*tail vira o anterior do novo já que antes era NULL
            novo->ant=*tail;
            *tail=novo;
        }
    }
}


//Remove o elemento na primeira posição
void remover(Node **head, Node **tail) {
    if (*head!=NULL){
        if(*tail !=NULL){
            *tail=(*tail)->ant;
            free((*tail)->prox);
            (*tail)->prox=NULL;
        }
        if((*head)->prox == NULL ){
            free(*head);
            *head=NULL;
            *tail=NULL;
        }
    }
}


//imprime toda a lista
void imprimir(Node *head) {
    while(head != NULL) {
        printf("%d -> ",head->valor);
        head = head->prox;
    }
    printf("NULL\n");
}

//retorna o tamanho da lista
int tamanho(Node *head) {
    int contador = 0;
    while( head != NULL) {
        head = head->prox;
        contador++;
    }
    return(contador);
}