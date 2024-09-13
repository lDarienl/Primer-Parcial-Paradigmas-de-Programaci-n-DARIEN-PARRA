-- Definición de un tipo de datos para representar un estudiante
data Estudiante = Estudiante {
    nombre :: String,            -- Nombre del estudiante
    apellido :: String,          -- Apellido del estudiante
    edad :: Int,                 -- Edad del estudiante
    idEst :: String,             -- Identificación única del estudiante
    calificaciones :: [Int]      -- Lista de calificaciones del estudiante
} deriving Show  -- Haskell genera automáticamente una función para imprimir este tipo

-- Función para crear un nuevo estudiante dado su información
crearEstudiante :: String -> String -> Int -> String -> [Int] -> Estudiante
crearEstudiante nombre apellido edad idEst calificaciones = 
    Estudiante nombre apellido edad idEst calificaciones

-- Función para eliminar un estudiante de una lista filtrando por su ID
eliminarEstudiante :: String -> [Estudiante] -> [Estudiante]
eliminarEstudiante idBuscado = filter (\est -> idEst est /= idBuscado)

-- Función para generar una cadena de texto que describa la información de un estudiante
imprimirEstudiante :: Estudiante -> String
imprimirEstudiante (Estudiante nombre apellido edad idEst calificaciones) = 
    "Nombre: " ++ nombre ++ " " ++ apellido ++ 
    "\nEdad: " ++ show edad ++ 
    "\nID: " ++ idEst ++ 
    "\nCalificaciones: " ++ show calificaciones

-- Función que calcula el uso de memoria estimado del estudiante (en bytes)
memoriaUsada :: Estudiante -> Int
memoriaUsada (Estudiante nombre apellido edad idEst calificaciones) = 
    length nombre + length apellido + length idEst + length calificaciones * 4

-- Función principal que realiza pruebas con los estudiantes
main :: IO ()
main = do
    -- Crear dos estudiantes de ejemplo
    let estudiante1 = crearEstudiante "Carlos" "Gomez" 20 "12345678" [85, 90, 78]
    let estudiante2 = crearEstudiante "Ana" "Lopez" 22 "87654321" [88, 92, 80]

    -- Imprimir los datos de los estudiantes
    putStrLn "Lista de estudiantes:"
    putStrLn (imprimirEstudiante estudiante1)
    putStrLn (imprimirEstudiante estudiante2)

    -- Eliminar al estudiante con ID "12345678"
    let estudiantes = [estudiante1, estudiante2]
    let estudiantesActualizados = eliminarEstudiante "12345678" estudiantes
    putStrLn "\nDespués de eliminar al estudiante con ID 12345678:"
    mapM_ (putStrLn . imprimirEstudiante) estudiantesActualizados

    -- Mostrar el uso de memoria de cada estudiante
    putStrLn "\nUso de memoria:"
    putStrLn $ "Memoria usada por Carlos Gomez: " ++ show (memoriaUsada estudiante1) ++ " bytes"
    putStrLn $ "Memoria usada por Ana Lopez: " ++ show (memoriaUsada estudiante2) ++ " bytes"
