#include <stdio.h>
#include <time.h>

// Función recursiva para calcular el factorial de 'n'
// El máximo número cuyo factorial se puede calcular de manera precisa es 65
unsigned long long factorial(int n) {
    // Caso base: factorial de 0 o 1 es 1
    if (n == 0 || n == 1) {
        return 1;
    } else {
        // Llamada recursiva para calcular el factorial
        return n * factorial(n - 1);
    }
}

int main() {
    clock_t start, end;  // Variables para medir el tiempo de ejecución
    double cpu_time_used;

    // Inicio del cronómetro
    start = clock();

    int n;
    // Solicitamos al usuario que ingrese un número
    printf("Ingrese un número entero: ");
    scanf("%d", &n);

    // Calculamos el factorial de manera recursiva y mostramos el resultado
    printf("Factorial (recursivo) de %d es %llu\n", n, factorial(n));
        
    // Fin del cronómetro
    end = clock();

    // Calculamos el tiempo usado por el programa
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("El programa tardó %f segundos en ejecutarse\n", cpu_time_used);

    return 0;
}