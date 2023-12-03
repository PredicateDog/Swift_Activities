// Declaración de variables 
var saldo: Float = 0.0 
var primeraVezRetiro = true 
var continuar = true 

// Funcion para realizar un depósito
func deposito() {
    print("Ingrese la cantidad a depositar:")
    if let cantidad = Float(readLine() ?? "0") { // Lee la cantidad ingresada por el usuario
        saldo += cantidad // Incrementa el saldo con la cantidad ingresada
        print("Depósito exitoso. Saldo actual: \(saldo)")
    } else {
        print("Cantidad no válida.")
    }
}

// Funcion para realizar un retiro
func retiro() {
    if primeraVezRetiro {
        print("Lo sentimos, no cuenta con saldo para realizar un retiro.")
        primeraVezRetiro = false // Marca que ya se intentó realizar un retiro
    } else {
        print("Ingrese la cantidad a retirar:")
        if let cantidad = Float(readLine() ?? "0") { // Lee la cantidad ingresada por el usuario
            if cantidad <= saldo { // Verifica si hay saldo suficiente para realizar el retiro
                saldo -= cantidad // Reduce el saldo con la cantidad retirada
                print("Retiro exitoso. Saldo actual: \(saldo)")
            } else {
                print("Saldo insuficiente.")
            }
        } else {
            print("Cantidad no válida.")
        }
    }
}

// Bucle while para mostrar el menú y ejecutar las operaciones
while continuar {
    print("\nMenú de operaciones:")
    print("1. Depósito")
    print("2. Retiro")
    print("3. Consultar Saldo")
    print("4. Salir")

    print("Ingrese la opción deseada:")
    if let opcion = Int(readLine() ?? "0") {
        switch opcion {
        case 1:
            deposito() 
        case 2:
            retiro()
        case 3:
            consultarSaldo() 
        case 4:
            continuar = false 
            print("Sesión finalizada.")
        default:
            print("Opción no válida.")
        }
    } else {
        print("Opción no válida.")
    }

    if continuar {
        print("¿Desea realizar otra operación? (S/N)")
        let respuesta = readLine()?.lowercased() ?? ""
        if respuesta != "s" && respuesta != "s" { // Verifica si el usuario quiere realizar más operaciones
            continuar = false // Finaliza la sesión
            print("Cerrando sesión de cuenta. ¡Vuelva pronto!")
        }
    }
}
