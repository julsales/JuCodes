#include <stdio.h>
#include <stdlib.h>
//Gpt puro só queria saber como faz pq to sem tempo agr kkkkkk, preciso dormir
typedef struct Node {
    int data;
    struct Node* next;
} Node;

void enqueue(Node** head, Node** tail, int value) {
    Node *novo = (Node*)malloc(sizeof(Node));
    novo->data = value;
    novo->next = NULL;
    if (*tail == NULL) {
        *head = *tail = novo;
    } else {
        (*tail)->next = novo;
        *tail = novo;
    }
}

int dequeue(Node** front, Node** rear) {
    if (*front == NULL) {
        printf("Fila vazia!\n");
        return -1;
    }
    Node* temp = *front;
    int value = temp->data;
    *front = (*front)->next;
    if (*front == NULL) {
        *rear = NULL;
    }
    free(temp);
    return value;
}

// Funções para manipulação de pilha
void push(Node** top, int value) {
    Node *novo =(Node*)malloc(sizeof(Node));
    if (novo == NULL) {
        printf("Erro ao alocar memória!\n");
        return;
    }
    novo->data = value;
    novo->next = *top;
    *top = novo;
}

int pop(Node** top) {
    if (*top == NULL) {
        printf("Pilha vazia!\n");
        return -1;
    }
    Node* temp = *top;
    int value = temp->data;
    *top = (*top)->next;
    free(temp);
    return value;
}

// Função para exibir os elementos da fila
void printQueue(Node* front) {
    Node* temp = front;
    while (temp != NULL) {
        printf("%d ", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

// Função para exibir os elementos da pilha
void printStack(Node* top) {
    Node* temp = top;
    while (temp != NULL) {
        printf("%d ", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

int main() {
    Node* FL1_front = NULL;
    Node* FL1_rear = NULL;
    Node* FL2_front = NULL;
    Node* FL2_rear = NULL;
    Node* PL1_top = NULL;

    // Inserir 10 números inteiros em FL1
    for (int i = 1; i <= 10; i++) {
        enqueue(&FL1_front, &FL1_rear, i);
    }

    // Inserir 10 números inteiros em FL2
    for (int i = 11; i <= 20; i++) {
        enqueue(&FL2_front, &FL2_rear, i);
    }

    // Concatenar FL1 e FL2 na pilha PL1
    Node* temp = FL1_front;
    while (temp != NULL) {
        push(&PL1_top, temp->data);
        temp = temp->next;
    }

    temp = FL2_front;
    while (temp != NULL) {
        push(&PL1_top, temp->data);
        temp = temp->next;
    }

    // Exibir todos os itens: FL1, FL2, PL1
    printf("Elementos da Fila FL1: ");
    printQueue(FL1_front);

    printf("Elementos da Fila FL2: ");
    printQueue(FL2_front);

    printf("Elementos da Pilha PL1: ");
    printStack(PL1_top);

    return 0;
}

