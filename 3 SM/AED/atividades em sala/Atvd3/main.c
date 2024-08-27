#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node {
    char nome[30];
    struct Node *next;
} Node;

void queue(Node **head, Node **tail, char *paciente) {
    Node *novo = (Node *)malloc(sizeof(Node));
    if (novo != NULL) {
        strcpy(novo->nome, paciente);
        novo->next = NULL;
        if (*head == NULL) {
            *head = novo;
            *tail = novo;
        } else {
            (*tail)->next = novo;
            *tail = novo;
        }
    }
}

void unqueue(Node **head, Node **tail, int *pacientesAtendidos) {
    if (*head != NULL) {
        Node *aux = *head;
        *head = aux->next;
        if (*head == NULL) {
            *tail = NULL;
        }
        printf("Paciente %s foi atendido.\n", aux->nome);
        free(aux);
        (*pacientesAtendidos)++;
    } else {
        printf("Nenhum paciente na fila para atendimento.\n");
    }
}

int consultarPosicao(Node *head, char *paciente) {
    Node *aux = head;
    int posicao = 1;
    while (aux != NULL) {
        if (strcmp(aux->nome, paciente) == 0) {
            return posicao;
        }
        aux = aux->next;
        posicao++;
    }
    return -1;
}


int main(void) {
    Node *head = NULL;
    Node *tail = NULL;
    int pacientesAtendidos = 0;

    while (1) {
        int n;
        printf("Clinica Médica\n");
        printf("=============\n");
        printf("(1) Incluir paciente\n");
        printf("(2) Realizar atendimento do paciente\n");
        printf("(3) Consultar a posição atual do paciente pelo nome\n");
        printf("(4) Exibir a quantidade de pacientes já atendidos\n");
        printf("(5) Sair\n");
        printf("Escolha uma opção: ");
        scanf("%d", &n);

        if (n == 1) {
            char paciente[30];
            printf("Digite o nome do paciente: ");
            scanf("%s", paciente);
            queue(&head, &tail, paciente);
        } else if (n==2) {
            unqueue(&head, &tail, &pacientesAtendidos);
        } else if (n==3) {
            char paciente[30];
            printf("Digite o nome do paciente: ");
            scanf("%s", paciente);
            int posicao = consultarPosicao(head, paciente);
            if (posicao != -1) {
                printf("Paciente %s está na posição %d da fila.\n", paciente, posicao);
            } else {
                printf("Paciente %s não está na fila.\n", paciente);
            }
        } else if (n == 4) {
            printf("Quantidade de pacientes já atendidos: %d\n", pacientesAtendidos);
        } else if (n == 5) {
            break;
        } else {
            printf("Opção inválida\n");
        }
    }

    return 0;
}