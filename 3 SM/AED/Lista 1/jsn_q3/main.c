#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node {
    char aeronave[10];
    struct Node *next;
} Node;

void enqueue(Node **head, Node **tail, char *aeronave){
    Node *novo = (Node *)malloc(sizeof (Node));
    if (novo !=NULL){
        strcpy(novo->aeronave,aeronave);
        novo->next=NULL;
        if (*head==NULL){
            *head=novo;
            *tail=novo;
        }else{
            (*tail)->next=novo;
            *tail = novo;
        }
    }
}

char *dequeue(Node **head,Node **tail){
    Node *aux;
    char *aeronave = (char *)malloc(10 * sizeof(char));
    if((*head)!=NULL){
        strcpy(aeronave,(*head)->aeronave);
        aux=*head;
        *head = (*head)->next;
        free(aux);
         if (*head==NULL){
             *tail = NULL;
         }
    }
    else {
        return NULL;
    }
    return aeronave;
}


int main() {
    char aeronave[10];
    int ptcardeal;
    //-1 Oeste
    Node *headOeste = NULL;
    Node *tailOeste = NULL;
    //-2 Sul
    Node *headSul = NULL;
    Node *tailSul = NULL;
    //-3 Norte
    Node *headNorte = NULL;
    Node *tailNorte = NULL;
    //-4 Leste
    Node *headLeste = NULL;
    Node *tailLeste = NULL;

    scanf("%d",&ptcardeal);
    while(1){
        scanf("%s",aeronave);
        if(ptcardeal==0 || strcmp(aeronave,"0")==0){
            break;
        }
       if(aeronave[0]=='-'){
           ptcardeal= aeronave[1] - '0';
           ptcardeal = -ptcardeal;
           continue;
       }
       if(ptcardeal == -1){
           enqueue(&headOeste,&tailOeste,aeronave);
       }else if(ptcardeal == -2){
            enqueue(&headSul,&tailSul,aeronave);
       }else if(ptcardeal == -3){
           enqueue(&headNorte,&tailNorte,aeronave);
       }else if(ptcardeal == -4){
           enqueue(&headLeste,&tailLeste,aeronave);
       }
    }
    int sinal=1;
    while(headOeste!=NULL || headNorte!=NULL || headSul!=NULL || headLeste!=NULL ){
        if (headOeste!=NULL){
            if(sinal==0){
                printf(" ");
            }
            printf("%s", dequeue(&headOeste,&tailOeste));
            sinal=0;
        }if (headNorte!=NULL){
            if(sinal==0){
                printf(" ");
            }
            printf("%s", dequeue(&headNorte,&tailNorte));
            sinal=0;
        }if (headSul!=NULL){
            if(sinal==0){
                printf(" ");
            }
            printf("%s", dequeue(&headSul,&tailSul));
            sinal=0;
        }if (headLeste!=NULL){
            if(sinal==0){
                printf(" ");
            }
            printf("%s", dequeue(&headLeste,&tailLeste));
            sinal=0;
        }
    }
    printf("\n");
    return 0;
}
