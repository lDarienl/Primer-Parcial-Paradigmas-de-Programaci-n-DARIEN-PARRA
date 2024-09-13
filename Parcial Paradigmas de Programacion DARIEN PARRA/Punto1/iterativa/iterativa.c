#include <stdio.h>
#include <time.h>

// Función que calcula el factorial de 'n' usando un enfoque iterativo
// El máximo número cuyo factorial se puede calcular de manera precisa es 65
unsigned long long factorial(int n) {
    unsigned long long resultado = 1;  // Variable para almacenar el resultado
    // Recorremos los números desde 1 hasta 'n' multiplicando en cada paso
    for (int i = 1; i <= n; i++) {
        resultado *= i;
    }
    return resultado;  // Devolvemos el resultado final
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

    // Calculamos el factorial de manera iterativa y mostramos el resultado
    printf("Factorial (iterativo) de %d es %llu\n", n, factorial(n));

    // Fin del cronómetro
    end = clock();

    // Calculamos el tiempo usado por el programa
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("El programa tardó %f segundos en ejecutarse\n", cpu_time_used);
    
    return 0;
}