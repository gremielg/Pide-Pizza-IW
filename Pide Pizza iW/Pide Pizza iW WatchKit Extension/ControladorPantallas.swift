//
//  ControladorPantallas.swift
//  Pide Pizza iW WatchKit Extension
//
//  Created by Gremiel Gonzalez on 11/24/20.
//  Copyright © 2020 Gremiel Gonzalez. All rights reserved.
//

import WatchKit
import Foundation
import UIKit


class ControladorPantallas: WKInterfaceController {
    @IBOutlet weak var pequenaSwitch: WKInterfaceSwitch!
    @IBOutlet weak var medianaSwitch: WKInterfaceSwitch!
    @IBOutlet weak var grandeSwitchiW: WKInterfaceSwitch!
    var precioTamano = 0.00
    var tamano : String = ""
    @IBOutlet weak var siConfirmandoNo: WKInterfaceButton!
    @IBOutlet weak var noRegresarResumen: WKInterfaceButton!
    @IBOutlet weak var continuarMasaiW: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func pequenaiW(_ value: Bool) {
        if value == true {
            medianaSwitch.setOn(false)
            grandeSwitchiW.setOn(false)
            precioTamano = 6.99
            tamano = "Pequeña"
            continuarMasaiW.setEnabled(true)
        
        }else{
            continuarMasaiW.setEnabled(false)
        }
    }
           
    @IBAction func medianaiW(_ value: Bool) {
        if value == true {
            pequenaSwitch.setOn(false)
            grandeSwitchiW.setOn(false)
            precioTamano = 9.99
            tamano = "Mediana"
            continuarMasaiW.setEnabled(true)
        }else{
            continuarMasaiW.setEnabled(false)
        }
    }
           
    @IBAction func grandeiW(_ value: Bool) {
        print("grande")
        if value == true{
            pequenaSwitch.setOn(false)
            medianaSwitch.setOn(false)
            tamano = "Grande"
            precioTamano = 12.99
            continuarMasaiW.setEnabled(true)
        }else{
            continuarMasaiW.setEnabled(false)
        }
    }
       @IBAction func continuarMasa() {
        let tamanoLabel = TamanoYPrecio().0
        let precioTamanoLabel = TamanoYPrecio().1
        let valoresGlobal1 = tomarValores(contTam: tamanoLabel, contPrecTam: precioTamanoLabel, contMasa2: "", presContMasa2: 0.00, contQue2: "", preConQue2: 0.00, contIngre2: "", preConIngre2: 0.00, sumaValores: 0.00, ivu: 0.00, sumaGlobal: 0.00, nombrePedido: "")
        pushController(withName: "Valores Tamano", context: valoresGlobal1)
    }
    func TamanoYPrecio()->(String, Double){
        var tamanoPizza1: String = ""
        var precioTamanoPizza1: Double = 0.00
        if tamano == "Pequeña"{
            tamanoPizza1 = tamano
            precioTamanoPizza1 = precioTamano
        }
        else if tamano == "Mediana" {
            tamanoPizza1 = tamano
            precioTamanoPizza1 = precioTamano
        }else if tamano == "Grande"{
            tamanoPizza1 = tamano
            precioTamanoPizza1 = precioTamano
        }
        var tamanoPizzaiW: [String] = [tamanoPizza1]
        
        if tamanoPizzaiW == ["Nada"]  {
            print("hacer al menos una ")
        }
        else {
            print("oK")
        }
        tamanoPizzaiW = tamanoPizzaiW.filter(){$0 != "Nada"}
        let tamanoPizza = tamanoPizzaiW.joined(separator: ",")
        return (tamanoPizza, precioTamanoPizza1)
    }
    
}
