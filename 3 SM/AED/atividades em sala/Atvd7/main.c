#include <stdio.h>
#include <stdlib.h>
//Resposta da prof kkk
//AED - 03/09 Listas Duplamente encadeadas

typedef struct Node{
  int valor;
  struct Node *prox;
  struct Node *ant;
} Node;

void inserirF(Node **head, int valor);
void remover(Node **head);
void imprimirInverso(Node *head);
void imprimir(Node *head);
void inserirOrdenado(Node **head,int valor);
void removerF(Node **head);


int main() {
  //Criação da lista
  Node *head = NULL;

  //inserção de nós
  inserirOrdenado(&head, 35);
  inserirOrdenado(&head, 5);
  inserirOrdenado(&head, 3);
  inserirOrdenado(&head, 95);

   printf("\nLista: ");
  imprimir(head);
  removerF(&head);


   printf("\nLista: ");
  imprimir(head);

}

//insere um novo nó na lista
void inserirOrdenado(Node **head, int valor) {
  Node *novo = (Node*)malloc(sizeof(Node));
  if(head==NULL) {
    novo->valor = valor;
    novo->prox = NULL;
    novo->ant = NULL;
  }
    if(*head!=NULL){
      Node *aux = *head;
      aux = aux->prox;
      while(aux->valor && aux->valor<h) {
        (*head)->ant = novo;
      }
      *head = novo;
    }
  }
}

void inserirF(Node **head, int valor) {
  Node *novo = (Node*)malloc(sizeof(Node));
  if (novo != NULL){
    novo->valor = valor;
    novo->prox = NULL;

    if(*head ==NULL){
      novo->ant=NULL;
      *head=novo;
    }else{
      Node *aux = *head;
      while(aux->prox != NULL)
        aux = aux->prox;
      aux->prox=novo;
      novo->ant=aux;
    }
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
void removerF(Node **head) {
  if(*head != NULL){
    if((*head)->prox ==NULL){
      free(*head);
      *head=NULL;
    }else{
      Node *aux = *head;
      while(aux->prox->prox)
        aux = aux->prox;
      free(aux->prox);
      aux->prox=NULL;
    }
  }
}

void imprimirInverso(Node *head) {
  Node *aux = head;
  while(aux->prox != NULL)
    aux=aux->prox;

  while(aux != NULL) {
    printf("%d ->",aux->valor);
    aux = aux->ant;
  }
  printf("NULL\n");
}

//imprime toda a lista
void imprimir(Node *head) {
    while(head != NULL) {
      printf("%d -> ",head->valor);
      head = head->prox;
    }
    printf("NULL\n");
}

