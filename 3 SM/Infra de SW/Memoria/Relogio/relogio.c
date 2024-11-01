#include <stdio.h>
#include <stdlib.h>

int relogio(int pages[], int n, int frames) {
    int *frame = (int *)malloc(frames * sizeof(int));
    int *bit = (int *)malloc(frames * sizeof(int));
    for (int i = 0; i < frames; i++){
        frame[i] = -1;
        bit[i] = 0;
    }

    int pageFaults = 0;
    int indice = 0;

    for (int i = 0; i < n; i++) {
        printf("\nAcessando página %d: \n", pages[i]);
        int found = 0;
        for (int j = 0; j < frames; j++) {
            if (frame[j] == pages[i]) {
                bit[j] = 1;
                found = 1;
                break;
            }
        }
        if (!found) {
            while (bit[indice] == 1) {
                bit[indice] = 0;
                indice = (indice + 1) % frames;
            }
            frame[indice] = pages[i];
            bit[indice] = 1;
            indice = (indice+1) % frames;
            printf("Falha de página!! -> ");
            pageFaults++;
        }
        for (int i = 0; i<frames; i++) {
            if (frame[i] != -1) {
                printf(" %d || ", frame[i]);
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    free(frame);
    free(bit);
    return pageFaults;
}
int main(void) {
    int pages[] = {1, 2, 3, 4, 1, 2, 5, 1, 2, 3, 4, 5};
    int n = sizeof(pages) / sizeof(pages[0]);
    int frames = 3;
    printf("\nFalhas de página: %d\n", relogio(pages, n, frames));
}