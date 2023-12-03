var compra: Int = 0
var cantidad: Int = 0
var precioTotal: Int = 0
var eleccion: Int = 0
let Zapatos: Int = 1
let Playeras: Int = 2
let Pantalones: Int = 3
let Sombreros: Int = 4
var stockZapatos: Int = 500
var stockPlayeras: Int = 750
var stockPantalones: Int = 20
var stockSombreros: Int = 100
let pZapatos: Int = 250
let pPlayeras: Int = 100
let pPantalones: Int = 200
let pSombreros: Int = 300

func eleccionA() {
    print("Se comprará la opción \(compra)")
    
    if compra == Zapatos {
        print("Descripción del artículo: Zapatos")
        print("Será un total de 250")
    } else if compra == Playeras {
        print("Descripción del artículo: Playeras")
        print("Será un total de 100")
    } else if compra == Pantalones {
        print("Descripción del artículo: Pantalones")
        print("Será un total de 200")
    } else if compra == Sombreros {
        print("Descripción del artículo: Sombreros")
        print("Será un total de 300")
    } else {
        print("Opción inválida.")
    }
    
    print("¿Desea proceder con la compra? (1) o ¿Desea regresar al menú? (0)")
    eleccion = Int(readLine()!) ?? 0
    
    if eleccion == 1 {
        procederCompra()
    } else {
        eleccionArticulos()
    }
}

func procederCompra() {
    print("--Proceso completado!!!")
    print("Desea seguir comprando? Si(1) / No(0)")
    eleccion = Int(readLine()!) ?? 0
    
    if eleccion == 1 {
        precioTotal = 0 // Reiniciar el precio total
        eleccionArticulos()
    } else {
        print("Gracias por la espera!!!!")
    }
}

func eleccionArticulos() {
    print("------Artículos-----")
    print("____________________")
    print("Opción: 1")
    print("Artículo: Zapatos")
    print("Precio: 250")
    print("Stock: 500")
    
    print("____________________")
    print("Opción: 2")
    print("Artículo: Playeras")
    print("Precio: 100")
    print("Stock: 750")
    print("____________________")
    
    print("Opción: 3")
    print("Artículo: Pantalones")
    print("Precio: 200")
    print("Stock: 20")
    print("____________________")
    
    print("Opción: 4")
    print("Artículo: Sombreros")
    print("Precio: 300")
    print("Stock: 100")
    print("____________________")
    
    print("--cuantos articulos desea comprar?--")
    cantidad = Int(readLine()!) ?? 0
    
    if cantidad == 1 {
        print("Que opción desea comprar?")
        compra = Int(readLine()!) ?? 0
        eleccionA()
    }
    
    if cantidad > stockZapatos && cantidad > stockPlayeras && cantidad > stockPantalones && cantidad > stockSombreros {
        print("Error: No hay suficiente stock para la cantidad seleccionada.")
    } else {
        var opcion1: Int = 0
        var opcion2: Int = 0
        var opcion3: Int = 0
        var opcion4: Int = 0
        
        print("Cuantos articulos de la opción 1 desea comprar?")
        opcion1 = Int(readLine()!) ?? 0
        print("Cuantos articulos de la opción 2 desea comprar?")
        opcion2 = Int(readLine()!) ?? 0
        print("Cuantos articulos de la opción 3 desea comprar?")
        opcion3 = Int(readLine()!) ?? 0
        print("Cuantos articulos de la opción 4 desea comprar?")
        opcion4 = Int(readLine()!) ?? 0
        
        if opcion1 <= stockZapatos && opcion2 <= stockPlayeras && opcion3 <= stockPantalones && opcion4 <= stockSombreros {
            precioTotal = (opcion1 * pZapatos) + (opcion2 * pPlayeras) + (opcion3 * pPantalones) + (opcion4 * pSombreros)
            print("____________________")
            print("El precio total es de: \(precioTotal)")
            print("--Proceso completado!!!")
            print("____________________")
            
            print("Desea seguir comprando? Si(1) / No(0)")
            eleccion = Int(readLine()!) ?? 0
            
            if eleccion == 1 {
                precioTotal = 0 // Reiniciar el precio total
                eleccionArticulos()
            } else {
                print("Gracias por la espera!!!!")
            }
        }
    }
}

eleccionArticulos()