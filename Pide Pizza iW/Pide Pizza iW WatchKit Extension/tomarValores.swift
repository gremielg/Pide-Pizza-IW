//
//  tomarValores.swift
//  Pide Pizza iW WatchKit Extension
//
//  Created by Gremiel Gonzalez on 12/6/20.
//  Copyright © 2020 Gremiel Gonzalez. All rights reserved.
//

import WatchKit

class tomarValores: NSObject {
    var tamanoVal: String = ""
    var precioTamanoVal: Double = 0.00
    var tamVal: String = ""
    var preTamVal: Double = 0.00
    var masaVal: String = ""
    var masVal: String = ""
    var preMasVal: Double = 0.00
    var precioMasaVal: Double = 0.00
    var quesoVal: String = ""
    var precioQuesoVal: Double = 0.00
    var queVal: String = ""
    var preQueVal: Double = 0.00
    var ingredientesVal: String = ""
    var precioIngredientesVal: Double = 0.00
    var ingVal: String = ""
    var preIngrVal: Double = 0.00
    var suma: Double = 0.00
    var impuestosVenta = 0.00
    var sumaTotal = 0.00
    var nombreCliente: String = ""
    
    init (contTam: String, contPrecTam: Double, contMasa2: String, presContMasa2: Double, contQue2: String, preConQue2: Double, contIngre2: String, preConIngre2: Double, sumaValores: Double, ivu: Double, sumaGlobal: Double, nombrePedido: String){
        tamVal = contTam
        preTamVal = contPrecTam
        preMasVal = presContMasa2
        masVal = contMasa2
        queVal = contQue2
        preQueVal = preConQue2
        ingVal = contIngre2
        preIngrVal = preConIngre2
        suma = sumaValores
        impuestosVenta = ivu
        sumaTotal = sumaGlobal
        nombreCliente = nombrePedido
        print(nombreCliente)
    }
    
   /*init(_ titleKey: LocalizedStringKey, text: Binding<String>, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {})*/
    
}
