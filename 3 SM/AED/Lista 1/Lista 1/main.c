#include <string.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct Node{
    char valor;
    struct Node *next;
}Node;

void push(Node **head,char a){
    Node *novo = (Node *)malloc(sizeof(Node));
    if (head!=NULL){
        novo->valor=a;
        novo->next=*head;
        *head=novo;
    }
}
void pop(Node **head){
    Node *aux;
    if (head!=NULL){
        aux=*head;
        *head=(*head)->next;
        free(aux);
    }
}

int main(void) {
    int N;
    char diamantes[1001];
    scanf("%d",&N);

    for(int i=0;i<N;i++){
        int resp=0;
        Node *head = NULL;
        scanf("%s",diamantes);
        for(int j=0;j<strlen(diamantes);j++){
            if (diamantes[j] == '<'){
                push(&head,'<');
            }else if(diamantes[j] == '>'){
                if(head != NULL){
                    resp++;
                    pop(&head);
                }
            }
        }
        printf("%d\n",resp);
        while (head!=NULL){
            pop(&head);
        }
    }
    return 0;
}
