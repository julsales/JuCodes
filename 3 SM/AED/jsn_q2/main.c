#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

typedef struct Node {
    char nome[31];
    int valor;
    struct Node *prox;
    struct Node *ant;
} Node;

void inserir(Node **head, Node **tail, int valor, char *nome) {
    Node *novo = (Node *)malloc(sizeof(Node));
    strcpy(novo->nome, nome);
    novo->valor = valor;
    if (*head == NULL) {
        novo->prox = novo;
        novo->ant = novo;
        *head = novo;
        *tail = novo;
    } else {
        novo->prox = *head;
        novo->ant = *tail;
        (*head)->ant = novo;
        (*tail)->prox = novo;
        *tail = novo;
    }
}

void remover(Node **head, Node **tail, Node *escolhido) {
    if (*head != NULL) {
        if (*head==*tail) {
            free(escolhido);
            *head = NULL;
            *tail = NULL;
        } else {
            if (escolhido==*head) {
                *head = escolhido->prox;
            }
            if (escolhido==*tail) {
                *tail = escolhido->ant;
            }
            escolhido->ant->prox = escolhido->prox;
            escolhido->prox->ant = escolhido->ant;
            free(escolhido);
        }
    }
}

void vencedor(Node **head, Node **tail) {
    if (*head == *tail) {
        printf("Vencedor(a): %s\n", (*head)->nome);
        free(*head);
        *head = NULL;
        *tail = NULL;
        return;
    }
    Node *atual = NULL;
    int contagem = (*tail)->valor;
    int sentido;
    if(contagem % 2 == 0){
        sentido=1;
        atual=(*tail)->ant;
    }else{
        atual=(*tail)->prox;
        sentido=0;
    }
    do{
        for (int i = 0; i<contagem; i++) {
            if (sentido) {
                atual = atual->ant;
            } else {
                atual = atual->prox;
            }
        }
        Node *removido = atual;
        contagem = atual->valor;
        if(contagem % 2 == 0){
            sentido=1;
            atual=removido->ant;
        }else{
            sentido=0;
            atual=removido->prox;
        }
        remover(head, tail, removido);
    }while(*head != *tail);

    printf("Vencedor(a): %s\n", (*head)->nome);
    free(*head);
    *head = NULL;
    *tail = NULL;
}

int main(void) {
    int N;

    while (scanf("%d", &N), N != 0) {
        if (N < 1 || N > 100) {
            continue;
        }
        Node *head = NULL;
        Node *tail = NULL;
        char nome[31];
        int valor;
        int valido;

        for (int i = 0; i < N; i++) {
            scanf("%s %d", nome, &valor);
            valido=1;
            for (int i = 0; i < strlen(nome); i++) {
                if ((!isalpha(nome[i]) || nome[i] == '_')) {
                    valido=0;
                    break;
                }
            }
            if (valido){
                inserir(&head,&tail,valor,nome);
            }
        }
        vencedor(&head, &tail);
    }
    return 0;
}
