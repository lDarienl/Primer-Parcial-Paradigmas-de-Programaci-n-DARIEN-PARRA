# Primer Parcial Paradigmas de Programación DARIEN PARRA 2024-02

Este repositorio contiene soluciones a tres problemas de programación que abordan diferentes desafíos relacionados con la optimización del cálculo del factorial, el ordenamiento de estudiantes por calificaciones y la gestión de estudiantes en un sistema universitario, con un enfoque en la optimización de memoria y rendimiento en cada caso.

### Punto 1: Cálculo del Factorial

**Problema**  
El objetivo es calcular el factorial de un número usando tres enfoques diferentes: memoización, iterativo y recursivo. Cada enfoque presenta ventajas y desventajas en términos de eficiencia y consumo de recursos.

**Conclusiones**  
- **Memoización**: Ofrece una optimización significativa al evitar cálculos repetidos, ideal para números grandes.
- **Iterativo**: Es eficiente y sencillo para la mayoría de los casos, pero puede tener problemas con números extremadamente grandes.
- **Recursivo**: Aunque es una solución elegante, es menos eficiente y presenta limitaciones para números grandes debido a la recursión profunda.

---

### Punto 2: Ordenamiento de Estudiantes por Calificaciones

**Problema**  
Dada una lista de nombres de estudiantes con sus calificaciones, se debe ordenar la lista en orden descendente por calificación. Si dos estudiantes tienen la misma calificación, se ordenan alfabéticamente. El problema se resuelve mediante dos enfoques: **imperativo**, usando el algoritmo de ordenamiento burbuja (Bubble Sort), y **declarativo**, utilizando Haskell para describir qué se desea lograr en lugar de cómo hacerlo.

**Conclusiones**  
- **Enfoque Imperativo (Bubble Sort)**: Es fácil de implementar y entender, pero tiene un rendimiento limitado, con una complejidad temporal de O(n²). Es adecuado para listas pequeñas, pero ineficiente para listas grandes.
- **Enfoque Declarativo (Haskell)**: Más abstracto, describe el objetivo sin manipular explícitamente la estructura de datos. Es más expresivo y conciso, con una mayor eficiencia en términos de líneas de código y tiempo de ejecución, especialmente en comparación con el enfoque imperativo.

---

### Punto 3: Sistema de Gestión de Estudiantes con Optimización de Memoria

**Problema**  
En un sistema universitario, se requiere gestionar los registros de estudiantes de manera eficiente, optimizando el uso de memoria. Las operaciones incluyen agregar, modificar y eliminar estudiantes, utilizando un enfoque en C que maneja dinámicamente la memoria con `malloc` y `free`. Además, se deben implementar técnicas para evitar el desperdicio de memoria y evitar la fragmentación, como el uso de estructuras optimizadas y cadenas de texto dinámicas.

**Conclusiones**  
- **Gestión Dinámica de Memoria (C)**: Usar `malloc` y `free` permite una gestión flexible de los recursos, lo que es esencial para sistemas con recursos limitados. El uso de estructuras como `struct` y `union`, así como el manejo de cadenas dinámicas, optimiza el uso de memoria, minimizando la fragmentación.
- **Optimización de Memoria**: La implementación cuidadosa de estructuras de datos y la liberación oportuna de memoria resultan en un sistema eficiente que reduce el uso innecesario de recursos. Las comparaciones antes y después de la optimización muestran una mejora considerable en el rendimiento del sistema y en el uso de memoria.

---

## Comparación de Rendimiento entre Paradigmas

**Enfoque Imperativo vs Declarativo**  
- **Imperativo**: Suele ser más detallado en términos de cómo se manipulan los datos, lo que puede llevar a un código más extenso y propenso a errores. Sin embargo, proporciona un control más directo sobre la memoria y los recursos.
- **Declarativo**: Se centra en el "qué" en lugar del "cómo", lo que lo hace más expresivo y menos detallado. La abstracción adicional permite que el programador se enfoque en la lógica en lugar de los detalles técnicos, con un impacto positivo en la legibilidad y el mantenimiento del código.

---

## Conclusiones Generales

Cada enfoque tiene su lugar en diferentes escenarios. Mientras que los enfoques imperativos permiten un control más fino de los recursos, los enfoques declarativos tienden a ser más eficientes y fáciles de mantener en situaciones donde la abstracción es suficiente. Las soluciones aquí presentadas permiten comprender las ventajas y limitaciones de cada paradigma en contextos prácticos como la optimización de memoria y el ordenamiento de datos.
