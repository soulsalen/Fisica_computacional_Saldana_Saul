
using SymPy

function f(x);  # Definiremos nuestra función para los siguientes ejercicios
    x^2-1 
end;

function integra_rect(f,a,b,h); #Definimos nuestro método de integración, donde daremos los valores del intervalo como su altura de rectangulos
    N = 100 # Definimos la cantidad de particiones
    h = (b-a)/N # y tomamos la definición de nuestra h para conocer en cuantos intervalos queremos nuestra integración
    suma = 0 # Escogemos un valor suma para ir guardando nuestros resultados.
      for i in 1:N #Tomamos el ciclo for desde el primer intervalo hasta nuestra N dada.
        altura = f(a + h/2) # Definimos nuestra altura de rectangulos de acuerdo en funcion de nuestra f
        area = h*altura # Ahora, applicamos lo que es la definición del area de un rectangulo, que es nuestra base por a altura.
        suma = suma+area; # Por ultimo queremos que se vallan sumando los valores que valla arrogajando nuestra area cada vez en nuestra suma
        a = a + h
    end
    return suma; # Regresamos a la suma total que se arroje del método. 
end;

integra_rect(f,0,10,100) # Probamos nuestra función...

function integra_trapec(f,a,b,h) # Ahora definiremos nuestra función que seguira el método del trapecio.
    N = 100 # De igual manera definimos el num de particiones
    h = (b-a)/N # Definiremos nuestra h que nos sera util dentro de los intervalos entre [a,b]
    suma = 0  # Escogemos un valor suma para ir guardando nuestros resultados.
      for i in 1:N # De igual manera que el ejercicio anterior definimos nuestro ciclo for
        area = (f(a)+f(a + h)) * h /2 # Aquí difiere del metodo anterior, ya que definimos con la función que nos pidio de una vez el area del trapecio, que sera las aproximaciones que nos dara nuestra función.
        suma = suma + area; # De igual forma que el anterior se iran sumando las areas con nuestra suma
        a = a + h # así se ira generando una nueva a de acuerdo con cada intervalo medido
    end
    return suma; # Retornamos a nuestra suma.
end;

integra_rect(f,0,10,100) # Probamos nuestra función... comparando el resultado del método anterior...


