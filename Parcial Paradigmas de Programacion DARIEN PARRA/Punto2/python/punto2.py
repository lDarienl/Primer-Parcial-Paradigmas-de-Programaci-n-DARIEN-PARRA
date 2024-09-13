# Lista de estudiantes con sus nombres y notas
estudiantes = [
    {"nombre": "Juan", "nota": 50},
    {"nombre": "María", "nota": 35},
    {"nombre": "Pedro", "nota": 45},
    {"nombre": "Ana", "nota": 50},
    {"nombre": "Luis", "nota": 33},
    {"nombre": "Sofía", "nota": 40},
    {"nombre": "Carlos", "nota": 49},
    {"nombre": "Daniela", "nota": 42}
]

# Función que ordena la lista de estudiantes utilizando el algoritmo de bubble sort
def bubble_sort(estudiantes):
    # 'estado' indica si hubo intercambios en la última pasada. 'n' es la longitud de la lista
    estado = True
    n = len(estudiantes)

    # El algoritmo sigue ejecutándose mientras haya intercambios y la lista no esté completamente recorrida
    while estado and n > 1:
        estado = False  # Se asume que no habrá intercambios en esta iteración

        # Recorremos la lista hasta el penúltimo elemento
        for i in range(len(estudiantes) - 1):
            # Comparamos las notas de dos estudiantes adyacentes
            if estudiantes[i]["nota"] < estudiantes[i + 1]["nota"]:
                # Si la nota del estudiante actual es menor, se intercambian
                estudiantes[i], estudiantes[i + 1] = estudiantes[i + 1], estudiantes[i]
                estado = True  # Hubo un intercambio, por lo que el estado es True

            # Si las notas son iguales, se ordenan alfabéticamente por nombre
            elif estudiantes[i]["nota"] == estudiantes[i + 1]["nota"]:
                # Comparamos los nombres alfabéticamente
                if estudiantes[i]["nombre"] > estudiantes[i + 1]["nombre"]:
                    # Si el nombre del estudiante actual es mayor alfabéticamente, se intercambian
                    estudiantes[i], estudiantes[i + 1] = estudiantes[i + 1], estudiantes[i]

        n -= 1  # Reducimos el número de elementos a comparar en la siguiente pasada

    return estudiantes  # Devolvemos la lista de estudiantes ordenada

# Llamada a la función para ordenar y mostrar los estudiantes
ordenEstudiantes = bubble_sort(estudiantes)

# Imprimir la lista ordenada de estudiantes
print("Lista ordenada:\n", ordenEstudiantes)