//
//  controller2ndScreen.swift
//  Pide Pizza iW WatchKit Extension
//
//  Created by Gremiel Gonzalez on 12/8/20.
//  Copyright © 2020 Gremiel Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class controller2ndScreen: WKInterfaceController {
  
    @IBOutlet weak var delgadaSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var crujienteSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var gruesaSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var continuarQuesi: WKInterfaceButton!
    
    
    var precioMasa = 0.00
    var masa : String = " "
    var tamLab: String = ""
    var preTamLab: Double = 0.00
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let traPag =  context as! tomarValores
        
        tamLab = String(traPag.tamVal)
        let vtraPag = context as! tomarValores
      
        preTamLab = Double(vtraPag.preTamVal)
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
    @IBAction func delgadaiWMasa(_ value: Bool) {
        if value == true{
            crujienteSwitchiW.setOn(false)
            gruesaSwitchiW.setOn(false)
            continuarQuesi.setEnabled(true)
            masa = "Delgada"
            precioMasa = 0.00
        }else{
            continuarQuesi.setEnabled(false)
        }
    
     }
     @IBAction func crujienteiWMasa(_ value: Bool) {
        if value == true{
            delgadaSwitchiW.setOn(false)
            gruesaSwitchiW.setOn(false)
            masa = "Crujiente"
            precioMasa = 0.50
            continuarQuesi.setEnabled(true)
        }else{
            continuarQuesi.setEnabled(false)
        }
         
     }
     @IBAction func gruesaiWMasa(_ value: Bool) {
        if value == true{
            crujienteSwitchiW.setOn(false)
            delgadaSwitchiW.setOn(false)
            masa = "Gruesa"
            precioMasa = 1.00
            continuarQuesi.setEnabled(true)
        }else{
            continuarQuesi.setEnabled(false)
        }
        
     }
    
    @IBAction func continuarQueso() {
        let masaLabel = masaYPrecio().0
        let precioMasaLabel = masaYPrecio().1
        let valoresGlobal1 = tomarValores(contTam: tamLab, contPrecTam: preTamLab, contMasa2: masaLabel, presContMasa2: precioMasaLabel, contQue2: "", preConQue2: 0.00, contIngre2: "", preConIngre2: 0.00, sumaValores: 0.00, ivu: 0.00, sumaGlobal: 0.00, nombrePedido: "")
        pushController(withName: "Controlador 3ra Pantalla", context: valoresGlobal1)
    }
    func masaYPrecio()->(String,Double){
        var masaPizza: String = ""
        var precioMasaPizza: Double = 0.00
        if masa == "Delgada"{
            masaPizza = masa
            precioMasaPizza = precioMasa
        }else if masa == "Crujiente"{
            masaPizza = masa
            precioMasaPizza = precioMasa
        }else if masa == "Gruesa"{
            masaPizza = masa
            precioMasaPizza = precioMasa
        }
        var masaPizzaiW: [String] = [masaPizza]
        if masaPizzaiW == ["Nada"]  {
            print("hacer al menos una ")
        }
        else {
            print("oK")
        }
        masaPizzaiW = masaPizzaiW.filter(){$0 != "Nada"}
        let masaPizza1 = masaPizzaiW.joined(separator: ",")
        return (masaPizza1, precioMasaPizza)
    }
}
