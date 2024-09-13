import Data.List (sortBy)  -- Importamos 'sortBy' para ordenar listas
import Data.Ord (comparing, Down(..))  -- 'comparing' y 'Down' para ordenar por diferentes criterios

-- Definimos el tipo 'Student' como una tupla de (Nombre, Calificación)
type Student = (String, Int)

-- Función que ordena una lista de estudiantes.
-- Primero ordena por calificación en orden descendente.
-- Si las calificaciones son iguales, se ordena por nombre en orden ascendente.
sortStudents :: [Student] -> [Student]
sortStudents = sortBy (comparing (Down . snd) <> comparing fst)

-- Función principal que crea una lista de estudiantes y la ordena
main :: IO ()
main = do
    -- Definimos una lista de estudiantes con sus nombres y calificaciones
    let students = [("Juan", 50), ("Maria", 35), ("Pedro", 45), ("Ana", 50), ("Luis", 33), 
                    ("Sofia", 40), ("Carlos", 49), ("Daniela", 42)]
    
    -- Imprimimos la lista de estudiantes ordenada
    print (sortStudents students)
