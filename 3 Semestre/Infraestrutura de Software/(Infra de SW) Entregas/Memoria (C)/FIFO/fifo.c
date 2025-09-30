#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int numero;
    struct Node *prox;
} Node;

void enqueue(Node **head, Node **tail, int n) {
    Node *novo = (Node *)malloc(sizeof(Node));
    if (novo != NULL) {
        novo->numero = n;
        novo->prox = NULL;
        if (*head == NULL) {
            *head = novo;
            *tail = novo;
        } else {
            (*tail)->prox = novo;
            *tail = novo;
        }
    }
}

int dequeue(Node **head, Node **tail) {
    Node *aux;
    int n = -1;
    if (*head != NULL) {
        n = (*head)->numero;
        aux = *head;
        *head = (*head)->prox;
        free(aux);
        if (*head == NULL)
            *tail = NULL;
    }
    return n;
}

void printFila(Node *head) {
    while (head != NULL) {
        if(head->prox==NULL){
            printf("%d\n", head->numero);
            return;
        }
        printf("%d -> ", head->numero);
        head = head->prox;
    }
}

int tamanho(Node *head) {
    int cont = 0;
    while (head != NULL) {
        cont++;
        head = head->prox;
    }
    return cont;
}

int presente(Node *head, int n) {
    while (head != NULL) {
        if (head->numero == n)
            return 1;
        head = head->prox;
    }
    return 0;
}

int main() {
    Node *head = NULL;
    Node *tail = NULL;
    int pages[] = {1, 2, 3, 4, 1, 2, 5, 1, 2, 3, 4, 5};
    int n = sizeof(pages) / sizeof(pages[0]);
    int frames = 3;
    int pageFaults = 0;

    for (int i = 0; i < n; i++) {
        if (!presente(head, pages[i])) {
            if (tamanho(head) >= frames) {
                dequeue(&head, &tail);
            }
            enqueue(&head, &tail, pages[i]);
            pageFaults++;
        }
        printFila(head);
    }

    while (head != NULL) {
        dequeue(&head, &tail);
    }

    printf("Falhas de página: %d\n", pageFaults);
    return 0;
}


