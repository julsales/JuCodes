#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int num;
    struct Node *next;
}Node;

void enqueue(Node **head, Node **tail, int n) {
    Node *novo = (Node *)malloc(sizeof(Node));
    if (novo != NULL) {
        novo->num= n;
        novo->next=NULL;
    }
    if (*head==NULL) {
        *head=novo;
        *tail=novo;
    }else{
        (*tail)->next=NULL;
        *tail=novo;
    }
}

int main(void)
{
    printf("Hello, World!\n");
    return 0;
}
