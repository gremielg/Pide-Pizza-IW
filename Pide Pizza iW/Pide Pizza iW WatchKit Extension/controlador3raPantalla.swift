//
//  controlador3raPantalla.swift
//  Pide Pizza iW WatchKit Extension
//
//  Created by Gremiel Gonzalez on 12/9/20.
//  Copyright © 2020 Gremiel Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class controlador3raPantalla: WKInterfaceController {
    @IBOutlet weak var tamanoPizza2: WKInterfaceLabel!
    @IBOutlet weak var precioTamanoPizza2: WKInterfaceLabel!
    @IBOutlet weak var masaLabel1: WKInterfaceLabel!
    @IBOutlet weak var precioMasaLabel1: WKInterfaceLabel!
    @IBOutlet weak var sinQuesoSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var cheddarSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var parmesanoSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var mosarellaSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var continuarIngredientesiW: WKInterfaceButton!
    var tamanoVa: String = ""
    var precTamanoVa: Double = 0.00
    var queso: String = ""
    var precioQueso: Double = 0.00
    var precioQuesoCheddar:Double = 0.00
    var quesoCheddar : String = ""
    var precioQuesoParmesano: Double = 0.00
    var quesoParmesano: String = ""
    var precioQuesoMosarela:Double = 0.00
    var quesoMosarela: String = ""
    var arregloQuesos: [String] = [""]
    var tamLab: String = ""
    var preTamLab: Double = 0.00
    var masLab: String = ""
    var preMasLab: Double = 0.00
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let traPag2 =  context as! tomarValores
        tamLab = traPag2.tamVal
        let vtraPag2 = context as! tomarValores
        preTamLab = vtraPag2.preTamVal
        
        let mraPag = context as! tomarValores
        let vmraPag = context as! tomarValores
        masLab = mraPag.masVal
        preMasLab = vmraPag.preMasVal
        
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
    @IBAction func cheddarQuesoiW(_ value: Bool) {
        if value == true{
            sinQuesoSwitchiW.setOn(false)
            queso = ""
            quesoCheddar = "Cheddar"
            precioQuesoCheddar = 0.00
            activarQuesos()
            continuarIngredientesiW.setEnabled(true)
        }else{
            quesoCheddar = ""
            precioQuesoCheddar = 0.00
            activarQuesos()
            //continuarIngredientesiW.setEnabled(false)
        }
    }
    @IBAction func parmesanoQuesoiW(_ value: Bool) {
        if value == true{
            
            sinQuesoSwitchiW.setOn(false)
            queso = ""
            quesoParmesano = "Parmesano"
            precioQuesoParmesano = 0.00
            activarQuesos()
            continuarIngredientesiW.setEnabled(true)
        }else{
            quesoParmesano = ""
            precioQuesoParmesano = 0.00
            activarQuesos()
            //continuarIngredientesiW.setEnabled(false)
        }
    }
    @IBAction func mosarelaQuesoiW(_ value: Bool) {
        if value == true{
            sinQuesoSwitchiW.setOn(false)
            queso = ""
            quesoMosarela = "Mosarella"
            precioQuesoMosarela = 0.00
            activarQuesos()
            continuarIngredientesiW.setEnabled(true)
        }else{
            quesoMosarela = ""
            precioQuesoMosarela = 0.00
            //continuarIngredientesiW.setEnabled(false)
            activarQuesos()
        }
    }
    @IBAction func SinQueso(_ value: Bool) {
        if value == true{
            cheddarSwitchiW.setOn(false)
            parmesanoSwitchiW.setOn(false)
            mosarellaSwitchiW.setOn(false)
            
            queso = "No lleva Queso"
            precioQueso = 0.00
            quesoMosarela = ""
            quesoParmesano = ""
            quesoCheddar = ""
            activarQuesos()
            continuarIngredientesiW.setEnabled(true)
        }else{
            queso = ""
            precioQueso = 0.00
            activarQuesos()
            //continuarIngredientesiW.setEnabled(false)
        }
    }
    
    @IBAction func ContinuarIngredientes() {
        let quesoLabel = quesoYPrecio().0
        let precioQuesoLabel = quesoYPrecio().1
        let valTamano = tamLab
        let valPrecTamano = preTamLab
        let valMasa = masLab
        let valPresMasa = preMasLab
        let valoresGlobal3 = tomarValores(contTam: valTamano, contPrecTam: valPrecTamano, contMasa2: valMasa, presContMasa2: valPresMasa, contQue2: quesoLabel, preConQue2: precioQuesoLabel, contIngre2: "", preConIngre2: 0.00, sumaValores: 0.00, ivu: 0.00, sumaGlobal: 0.00, nombrePedido: "")
        pushController(withName: "Ingredientes", context: valoresGlobal3)
        
    }
    func quesoYPrecio()->(String, Double){
        var quesoPizza: String = ""
        var precioQuesoPizza: Double = 0.00
        var precioSinQueso: Double = 0.00
        var precioParm: Double = 0.00
        var precioMosa: Double = 0.00
        var precioChed: Double = 0.00
        for i in arregloQuesos{
            print(i)
            if quesoMosarela != ""{
                precioMosa = 0.00
                precioQuesoPizza = precioQuesoPizza + precioMosa
            }else if quesoParmesano != ""{
                precioParm = 0.00
                precioQuesoPizza = precioQuesoPizza + precioParm
            }else if quesoCheddar != ""{
                precioChed = 0.00
                precioQuesoPizza = precioQuesoPizza + precioChed
            }else{
                precioQuesoPizza = precioQuesoPizza + precioSinQueso
            }
        }
        print(precioQuesoPizza)
        arregloQuesos = arregloQuesos.filter(){$0 != ""}
        quesoPizza = arregloQuesos.joined(separator: ",")
        return (quesoPizza, precioQuesoPizza)
    }
    func activarQuesos(){
        
        arregloQuesos = [queso,quesoMosarela, quesoParmesano, quesoCheddar]
        if queso == "" && quesoMosarela == "" && quesoCheddar == "" && quesoParmesano == "" {
            continuarIngredientesiW.setEnabled(false)
        }else{
            continuarIngredientesiW.setEnabled(true)
        }
        
    }
}
