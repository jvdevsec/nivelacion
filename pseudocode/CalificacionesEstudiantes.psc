Algoritmo CalificacionesEstudiantes
    // Declarar las variables
    Definir nombres Como Cadena
    Definir notas Como Real
    Definir promedios Como Real
    Definir estados Como Cadena
    Definir i, j Como Entero
    
    // Inicializacion de los arreglos para 5 estudiantes
	// Nota: Por lmitaciones de Pseint tuve que usar 2 arreglos diferentes para los nombres y las notas - estos tienen que ser homogeneos
	
    Dimension nombres[5]        // Almacenar los nombres
    Dimension notas[5, 3]       // 3 notas por estudiante
    Dimension promedios[5]      // Promedio de cada estudiante
    Dimension estados[5]        // "Aprueba" o "Reprueba"
    
    // Ingreso de datos de los estudiantes - ciclos Para (for) anidados
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el nombre del estudiante ", i, ": "
        Leer nombres[i]
        
        // Agresar las 3 notas
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Ingrese la nota ", j, " de ", nombres[i], ": "
            Leer notas[i, j]
        FinPara
    FinPara
    
    // Calculo del promedio y si el estudiante aprueba
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        // Sumar las 3 notas
        promedios[i] <- (notas[i, 1] + notas[i, 2] + notas[i, 3]) / 3
        
        // Determinar estado
        Si promedios[i] >= 3.5 Entonces
            estados[i] <- "Aprueba"
        Sino
            estados[i] <- "Reprueba"
        FinSi
    FinPara
    
    // Paso 3: Mostrar el resumen
    Escribir ""
    Escribir "==== NOTAS FINALES DE LOS ESTUDIANTES ===="
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Estudiante: ", nombres[i]
        Escribir "Notas: ", notas[i, 1], ", ", notas[i, 2], ", ", notas[i, 3]
        Escribir "Promedio: ", promedios[i]
        Escribir "Estado: ", estados[i]
        Escribir "-------------------------"
    FinPara
FinAlgoritmo