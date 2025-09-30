#include <stdio.h>
#include <stdlib.h>

int lfu(int pages[], int n, int frames) {
    int *frame = (int *)malloc(frames * sizeof(int));
    int *freq = (int *)malloc(frames * sizeof(int));
    for (int i = 0; i<frames; i++){
        freq[i] = 0;
        frame[i] = -1;
    }
    int pageFaults = 0;
    for (int i = 0; i < n; i++) {
        printf("\nAcessando página %d:\n", pages[i]);
        int achado = 0;
        for (int j = 0; j < frames; j++) {
            if (frame[j] == pages[i]) {
                achado = 1;
                freq[j]++;
                break;
            }
        }
        if (!achado) {
            int min = 10000;
            int pos = 0;
            for (int j = 0; j<frames; j++) {
                if (freq[j] < min) {
                    min = freq[j];
                    pos = j;
                }
            }
            frame[pos] = pages[i];
            freq[pos] = 1;
            printf("Falha de página -> ");
            pageFaults++;
        }
        for (int i = 0; i<frames; i++) {
            if (frame[i] != -1) {
                printf(" %d - freq = %d || ", frame[i], freq[i]);
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    free(frame);
    free(freq);
    return pageFaults;
}
int main(void) {
    int pages[] = {1, 2, 3, 4, 1, 2, 5, 1, 2, 3, 4, 5};
    int n = sizeof(pages) / sizeof(pages[0]);
    int frames = 3;
    printf("\nFalhas de página: %d\n", lfu(pages, n, frames));
}
