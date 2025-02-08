#include <stdbool.h>
#include <stdio.h>
#define MAX_SIZE 100

// After you make front and back = 100, this code cannot insert new elements
// need to use circular queue, which just uses the modulus operator

typedef struct
{
    int arr[MAX_SIZE];
    int front;
    int back;
} my_queue;

void initialize_queue(my_queue *q)
{
    q->front = 0;
    q->back = 0;
}

void show_queue(my_queue* q) {
    for(int i = q->back; i < q->front; i++) {
        printf("%d\n", q->arr[i]);
    }
}

void enqueue(my_queue *q, int new_element)
{
    q->arr[q->front] = new_element;
    q->front++;
    printf("placed element %d into queue\n", new_element);
}

void dequeue(my_queue *q)
{
    printf("removed element %d from queue\n", q->arr[q->back]);
    q->back++;
}

int main()
{
    my_queue q;
    initialize_queue(&q);
    enqueue(&q, 10);
    enqueue(&q, 20);
    show_queue(&q);
    dequeue(&q);
    show_queue(&q);
}