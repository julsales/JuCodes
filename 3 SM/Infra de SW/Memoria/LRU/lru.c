#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

typedef struct Node {
    int numero;
    int tempo;
    struct Node *prox;
} Node;

void enqueue(Node **head, Node **tail, int n, int tempo) {
    Node *novo = (Node *)malloc(sizeof(Node));
    if (novo != NULL) {
        novo->numero = n;
        novo->tempo = tempo;
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

int dequeue(Node **head) {
    Node *aux = *head, *prev = NULL;
    Node *lru = *head, *lruPrev = NULL;

    while (aux != NULL) {
        if (aux->tempo < lru->tempo) {
            lru = aux;
            lruPrev = prev;
        }
        prev = aux;
        aux = aux->prox;
    }

    int numeroLRU = lru->numero;
    if (lruPrev != NULL)
        lruPrev->prox = lru->prox;
    else
        *head = lru->prox;

    free(lru);
    return numeroLRU;
}

int presente(Node *head, int n) {
    while (head != NULL) {
        if (head->numero == n)
            return 1;
        head = head->prox;
    }
    return 0;
}

void atualizarTempo(Node *head, int n, int tempo) {
    while (head != NULL) {
        if (head->numero == n) {
            head->tempo = tempo;
            break;
        }
        head = head->prox;
    }
}

void printLRU(Node *head) {
    while (head != NULL) {
        printf("%d ", head->numero);
        head = head->prox;
    }
    printf("\n");
}

int tamanho(Node *head) {
    int count = 0;
    while (head != NULL) {
        count++;
        head = head->prox;
    }
    return count;
}

int main() {
    Node *head = NULL;
    Node *tail = NULL;
    int pages[] =  {1, 2, 3, 2, 1, 5, 2, 1, 6, 2, 5, 6, 3, 1, 3};
    int n = sizeof(pages) / sizeof(pages[0]);
    int frames = 3;
    int pageFaults = 0;
    int tempo = 0;

    for (int i = 0; i < n; i++) {
        printf("Página: %d -> ", pages[i]);

        if (presente(head, pages[i])) {
            atualizarTempo(head, pages[i], tempo);
            printLRU(head);
        } else {
            if (tamanho(head) < frames) {
                enqueue(&head, &tail, pages[i], tempo);
                pageFaults++;
            } else {
                dequeue(&head);
                enqueue(&head, &tail, pages[i], tempo);
                pageFaults++;
            }
            printLRU(head);
        }
        tempo++;
    }

    printf("\nFalhas de página: %d\n", pageFaults);

    while (head != NULL) {
        dequeue(&head);
    }
    return 0;
}
