#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int aleatorio(int pages[], int n, int frames) {
    int *frame = (int *)malloc(frames * sizeof(int));
    for (int i = 0; i<frames; i++){
        frame[i] = -1;
    }
    int pageFaults = 0;

    srand(time(NULL));

    for (int i=0; i<n; i++) {
        printf("\nAcessando página %d: \n", pages[i]);
        int achado = 0;
        for (int j=0; j<frames; j++) {
            if (frame[j] == pages[i]) {
                achado = 1;
                break;
            }
        }
        if (!achado) {
            int pos = rand() % frames;
            frame[pos] = pages[i];
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
    return pageFaults;
}
int main(void) {
    int pages[] = {1, 2, 3, 4, 1, 2, 5, 1, 2, 3, 4, 5};
    int n = sizeof(pages) / sizeof(pages[0]);
    int frames = 3;
    printf("\nFalhas de página: %d\n", aleatorio(pages, n, frames));
}
