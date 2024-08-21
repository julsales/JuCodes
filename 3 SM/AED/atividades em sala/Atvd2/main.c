#include <stdio.h>
#include <stdlib.h>
//fazer uma função que retorna a posição de um valor na lista
typedef struct node{
    int num;
    struct node *next;
}Node;

int busca (Node *head,int val){
    // com 1 * quer dizer que a função só retorna o valor e não o parâmetro
    int cont = 1;
    while (head != NULL  && head -> num != val){
        cont++;
        head = head -> next;
    }
    if (head != NULL){
        return cont;
    }
    return 0;
}

void insert(Node **head, int n){
    Node *novo = (Node*)malloc(sizeof(Node));
    if (novo != NULL){
        novo->num=n;
        novo->next=*head;
        *head = novo;
    }
}
int main(void) {
    //
  return 0;
}