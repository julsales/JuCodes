#include <stdio.h>
#include <stdlib.h>
//Resposta da prof kkk

typedef struct Node{
  int valor;
  struct Node *prox;
  struct Node *ant;
} Node;

void inserir(Node **head, int valor);
void remover(Node **head);
void imprimirInverso(Node *head);
void imprimir(Node *head);
int tamanho(Node *head);
void inserirF(Node **head, int valor) ;
void removerF(Node **head) ;
void inserirFTail(Node **head, Node **tail,int valor);
void removerFTail(Node **head,Node **tail);



int main() {
  //Criação da lista
  Node *head = NULL;
  Node *tail = NULL;

  //inserção de nós
  inserirFTail(&head,&tail, 35);
  inserirFTail(&head,&tail, 5);
  inserirFTail(&head,&tail, 3);
  inserirFTail(&head,&tail, 95);

   printf("\nLista: ");
  imprimir(head);
  removerFTail(&head,&tail);


   printf("\nLista: ");
  imprimir(head);

}

//insere um novo nó na lista
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

void inserirFTail(Node **head, Node **tail,int valor) {
  Node *novo = (Node*)malloc(sizeof(Node));
  if (novo != NULL){
    novo->valor = valor;
    novo->prox = NULL;

    if(*head ==NULL){
      novo->ant=NULL;
      *head=novo;
      *tail=novo;
    }else{
      (*tail)->prox=novo;
      novo->ant=*tail;
      *tail=novo;
    }
  }
}
//Remove o elemento na primeira posição
void removerFTail(Node **head,Node **tail) {
  if(*head != NULL){
    if((*head)->prox ==NULL){
      free(*head);
      *head=NULL;
      *tail=NULL;
    }else{
      *tail = (*tail)->ant;
      free((*tail)->prox);
      (*tail)->prox=NULL;
    }
  }
}
//Remove o elemento na primeira posição
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

//Remove o elemento na primeira posição
void remover(Node **head) {
  if(*head != NULL){
    Node *aux = *head;
    *head = aux->prox;
    free(aux);
    if(*head != NULL)
      (*head)->ant = NULL;
  }
}
//imprime toda a lista na ordem inversa
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

//retorna o tamanho da lista
int tamanho(Node *head) {
   int contador = 0;
   while( head != NULL) {
      head = head->prox;
      contador++;
   }
   return(contador);
}
