    var nombreA: [String] = []

func Inicio(){
  print("------Menu-----") 
//Opciones
print("1. Registro de articulos")
print("2. Ver la lista de articulos")
print("3. Consultar articulos en existencia")
print("4. Salir")
print("Elige una opcion (Numero)")

if let opciones = readLine(), let op = Int(opciones){
    //Casos especificos para cada opcion
switch op{
  case 1:
    print("Porfavor ingrese el numero de articulos que desea ingresar")
      if let articulos = readLine(), let at = Int(articulos){
        //Ciclo for para el numero de articulos
        for i in 1...at{ 
        print("Registro de articulos")
          print("Ingrese el nombre del articulo, posteriormente presione enter")
          if let nombreArticulo = readLine(){
            nombreA.append(nombreArticulo)
          }
          
        }
        print("Desea regresar al menu? presione 1 para si y 2 para no")
        if let respuesta = readLine(), let rF = Int(respuesta){
          if(rF == 1){
            Inicio()
          }
        }
      }
        //Visualizacion de articulos y visualizar el numero de articulos
  case 2:
    print("Desplegando lista")
    print(nombreA)
    let cantidadElementos = nombreA.count
    print("La cantidad de elementos es de: \(cantidadElementos)")
    print("Desea regresar al menu? presione 1 para si y 2 para no")
        if let respuesta = readLine(), let rF = Int(respuesta){
          if(rF == 1){
            Inicio()
          }
        }
        //Desplegue de lista de articulos
  case 3:
    print("------Articulos------")
    for (i, elemento) in nombreA.enumerated() {
    let numeroObjeto = i + 1
    print("Elemento \(numeroObjeto): \(elemento)")
}
     print("Desea regresar al menu? presione 1 para si y 2 para no")
        if let respuesta = readLine(), let rF = Int(respuesta){
          if(rF == 1){
            Inicio()
          }
        }
  case 4:
    print("Salir")
  default:
    print("Has ingresado un numero o letra incorrecta, intentalo de nuevo")
    Inicio()
}
}
}

print("Bienvenido presione 1 para continuar")
if let numero = readLine(), let num = Int(numero){
  if(num == 1){
    Inicio()
  }
}