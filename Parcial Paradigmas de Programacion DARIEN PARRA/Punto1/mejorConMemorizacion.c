#include <stdio.h>
#include <time.h>

// Array de memoización para almacenar los factoriales ya calculados (hasta un límite de 100)
unsigned long long memo[100]; // Suponemos un límite para 'n'

// Función para calcular el factorial de 'n' usando memoización (almacenamiento en memoria)
unsigned long long factorial_memoization(int n) {
    // Caso base: factorial de 0 y 1 es 1
    if (n == 0 || n == 1) {
        return 1;
    }
    // Si el valor ya fue calculado previamente, lo devolvemos desde el array 'memo'
    if (memo[n] != 0) {
        return memo[n];  
    }
    // Si no, calculamos el factorial y lo guardamos en 'memo' para futuras referencias
    memo[n] = n * factorial_memoization(n - 1);
    return memo[n];
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

    // Calculamos el factorial usando memoización y mostramos el resultado
    printf("Factorial (con memorización) de %d es %llu\n", n, factorial_memoization(n));

    // Fin del cronómetro
    end = clock();

    // Calculamos el tiempo usado por el programa
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("El programa tardó %f segundos en ejecutarse\n", cpu_time_used);

    return 0;
}