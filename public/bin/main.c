#include <stdio.h>

typedef struct{
    char *name;
    int age
} person;

int main(){
    person Juan;

    Juan.name = "Juan";
    Juan.age = 24;

    printf("%s is %d years old.\n", Juan.name, Juan.age);

    return 0;
}
