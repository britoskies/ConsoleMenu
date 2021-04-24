Algoritmo Mejor_estructurado
	
	Definir Captura, Option, Factor  Como Entero
	
	Mientras Option <> 5 Hacer  // hace repetidor hasta que se marque la Opcion de "5- Finalizar Programa"
		
		Escribir "----------- Men� de Opciones -----------"
		Escribir ""
		
		Escribir "1- Capturar valor"
		Escribir "2- Generar Tabla Multiplicar"
		Escribir "3- Determinar si es PRIMO o NO PRIMO"
		Escribir "4- Capturar Matriz 4x4, deplegando sus diagonales"
		Escribir "5- Salir del Programa"
		Escribir ""
		Escribir "-----------------------------------------"
		Escribir ""
		
		Escribir "Tu opci�n " Sin Saltar
		Leer Option 
		Escribir ""
		
		Segun Option hacer 
			
			1:
				Escribir "Deposite el valor " Sin Saltar
				Leer Captura
				
				Escribir ""
				Escribir "Presione cualquier tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
				
				
			2: ProcedimientoTablaMultiplicar(Captura)
				
			3: ProcedimientoMostraEvaluacionPrimo(Captura)
				
			4: ProcedimientoDiagonalesMatriz(Captura)
				
			5:	FinalizarPrograma
				
		FinSegun
	FinMientras
	

FinAlgoritmo




// FUNCIONES DEL PROGRAMA

SubProceso ProcedimientoTablaMultiplicar(Captura)
	
	
	Escribir "Tabla de Multiplicaci�n"
	Escribir ""
	
	Para Factor <- 1 Hasta 12 Con paso 1 Hacer //Factor esta haciendo el papel de Contador y del multiplicando.
		
		Resultado = Captura * Factor 
		Escribir Captura, " * ", Factor, " = ", Resultado 
		
	FinPara
	
	Escribir ""
	Escribir "Presione cualquier tecla para continuar"
	Esperar Tecla
	Limpiar Pantalla
	
FinSubProceso






SubProceso ProcedimientoMostraEvaluacionPrimo(Captura)
	
	Escribir "Determinaci�n de si es PRIMO o NO PRIMO"
	Escribir ""
	Contador = 0
	Factor = 1
	
	Mientras Factor <= Captura Hacer
		
		Si Captura %  Factor == 0 Entonces // al igual que % se puede utlizar mod para el residuo
			Contador = Contador + 1 // Contador esta desempe�ando la funci�n de veces que la divisi�n quede en residuo exacto.
		FinSi
		
		Factor = Factor + 1
		
	FinMientras
	
	Si Contador == 2 Entonces // si se obtiene m�s de dos divisores exactos no es primo.
		Escribir "-- El N�mero ", Captura, " es Primo"
		
	SiNo
		Escribir "-- El N�mero ", Captura, " NO es Primo"
	FinSi
	
	Escribir ""
	Escribir "Presione cualquier tecla para continuar"
	Esperar Tecla
	Limpiar Pantalla
	
FinSubProceso





	SubProceso ProcedimientoDiagonalesMatriz(Captura)
		
		Definir Matriz, Fila, Columna Como Entero
		Dimension Matriz[4,4];
		
		// Escribir "Introduzca el valor para la fila ", Fila, " de la columna ", Columna
		Escribir "-- Introduzca los valores para la matriz --"
		
		Para Fila = 1 Hasta 4 Con paso 1 Hacer
			Para Columna = 1 Hasta 4 Con paso 1 Hacer
				Leer Matriz[Fila,Columna]
			FinPara
		FinPara
		
		// Demostraci�n espec�fica de el lugar donde fueron almacenados los valores de la matriz
		Escribir ""
		Escribir "Representaci�n Sencilla"
		Escribir ""
		
		Para Fila = 1 Hasta 4 Con paso 1 Hacer
			Para Columna = 1 Hasta 4 Con paso 1 Hacer
				
				Escribir "- En la Fila ", Fila, " de la Columna ", Columna, " fue alojado el valor: ", Matriz[Fila,Columna]
			FinPara
		FinPara
		
		Escribir ""
		
		// Usualmente vemos las matrices de esta forma:
		Escribir "Representaci�n Gr�fica:" 
		
		Escribir ""
		
		Para fila = 1 hasta 4 Hacer
			para Columna = 1 hasta 4 hacer
				
				Si Columna = 1 Entonces
					Escribir "[ ", Matriz[fila,Columna], " " Sin Saltar
					
				SiNo
					Si Columna = 4 Entonces
						Escribir " ", Matriz[fila,Columna], " ]" 
						
					SiNo
						Escribir " ", Matriz[fila,Columna], " " Sin Saltar
					FinSi
	
				FinSi
			FinPara
		FinPara
		
		
		
		Escribir ""
		
		// Diagonales de la matriz seleccionada
		
		Escribir "Diagonales: "
		Escribir ""
		
		Escribir "La Matriz Diagonal Principal es: ", Matriz[1,1], ";", Matriz[2,2], ";", Matriz[3,3], ";", Matriz[4,4]
		Escribir "La Matriz Diagonal Secundaria es: ", Matriz[4,1], ";", Matriz[3,2], ";", Matriz[2,3], ";", Matriz[1,4]
		
		Escribir ""
		Escribir "Presione cualquier tecla para continuar"
		Esperar Tecla
		Limpiar Pantalla
		
FinSubProceso


SubProceso FinalizarPrograma()
	
	Limpiar Pantalla
	Escribir "Gracias por utilizar nuestro programa"
	Escribir "Made by: Franklyn and Ronald" //TeamDolla
	Escribir "-- Fin de la ejecuci�n --"
	
FinSubProceso

	