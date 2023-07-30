//Declaracion de variabels
var valortotal: Int

//Datos de usuario
print("Ingrese un numero:")
if let numerostring = readLine(), let num = Int(numerostring){
      valortotal = num % 2
  //Condicional if para sacar el numero par 
  if(valortotal == 0){
        print("El valor de tu numero es par")
  } else{ print("El valor es impar")
        }
}