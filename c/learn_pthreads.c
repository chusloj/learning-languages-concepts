#include <pthread.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

// to run on cmd line, use clang -pthreads filename.c

void *my_turn(void *arg) // multi-threaded function must take a void pointer
{
    for (int i = 0; i < 8; i++)
    {
        sleep(1);
        printf("My Turn! %d\n", i);
    }
    return NULL;
}

void your_turn()
{
    for (int i = 0; i < 3; i++)
    {
        sleep(1);
        printf("Your Turn! %d\n", i);
    }
}

int main()
{
    pthread_t newthread;

    pthread_create(&newthread, NULL, my_turn, NULL);
    // my_turn();
    your_turn(); // funciton requires no thread because it's using the default one provided by main()

    pthread_join(newthread, NULL);
}