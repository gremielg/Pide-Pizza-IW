//
//  controladorIngredientes.swift
//  Pide Pizza iW WatchKit Extension
//
//  Created by Gremiel Gonzalez on 12/18/20.
//  Copyright © 2020 Gremiel Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class controladorIngredientes: WKInterfaceController {
   
   
    
    @IBOutlet weak var sinIngredientesSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var peperoniSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var jamonSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var aceitunasSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var cebollaSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var chorizoSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var pavoSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var salchichaSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var pimientoSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var pinaSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var archoaSwitchiW: WKInterfaceSwitch!
    @IBOutlet weak var continuarResumeniW: WKInterfaceButton!
    
    var ingredientes: String = ""
    var precioIngredientes: Double = 0.00
    var ingredientePeperoni: String = ""
    var precioIngPeperoni: Double = 0.00
    var ingredienteJamon: String = ""
    var precioIngJamon: Double = 0.00
    var ingredienteAceituna: String = ""
    var precioIngAceituna: Double = 0.00
    var ingredienteCebolla: String = ""
    var precioIngCebolla: Double = 0.00
    var ingredienteChorizo: String = ""
    var precioIngChorizo: Double = 0.00
    var ingredientePavo: String = ""
    var precioIngPavo: Double = 0.00
    var ingredienteSalchicha: String = ""
    var precioIngSalchicha: Double = 0.00
    var ingredientePimiento: String = ""
    var precioIngPimiento: Double = 0.00
    var ingredientePina: String = ""
    var precioIngPina: Double = 0.00
    var ingredienteArchoa: String = ""
    var precioIngArchoa: Double = 0.00
    var arregloIngredientes: [String] = [""]
    
    var tamano4: String = ""
    var precioTamano4: Double = 0.00
    var masa4: String = ""
    var preMasa4: Double = 0.00
    var queso4: String = ""
    var preQueso4: Double = 0.00
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let qraPag = context as! tomarValores
        let vqraPag = context as! tomarValores
        queso4 = qraPag.queVal
        preQueso4 = vqraPag.preQueVal
        
        let trapag3 = context as! tomarValores
        let ptraPag3 = context as! tomarValores
        tamano4 = trapag3.tamVal
        precioTamano4 = ptraPag3.preTamVal
        
        let mraPag3 = context as! tomarValores
        let pmraPag3 = context as! tomarValores
        masa4 = mraPag3.masVal
        preMasa4 = pmraPag3.preMasVal
        
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
    @IBAction func SinIngredientes(_ value: Bool) {
        if value == true{
            peperoniSwitchiW.setOn(false)
            jamonSwitchiW.setOn(false)
            aceitunasSwitchiW.setOn(false)
            cebollaSwitchiW.setOn(false)
            chorizoSwitchiW.setOn(false)
            pavoSwitchiW.setOn(false)
            salchichaSwitchiW.setOn(false)
            pimientoSwitchiW.setOn(false)
            pinaSwitchiW.setOn(false)
            archoaSwitchiW.setOn(false)
            ingredientes = "No lleva ingredientes"
            precioIngredientes = 0.00
            ingredientePavo = ""
            ingredientePina = ""
            ingredienteJamon = ""
            ingredienteArchoa = ""
            ingredienteCebolla = ""
            ingredienteChorizo = ""
            ingredientePeperoni = ""
            ingredienteAceituna = ""
            ingredientePimiento = ""
            ingredienteSalchicha = ""
            precioIngPavo = 0.00
            precioIngPina = 0.00
            precioIngJamon = 0.00
            precioIngArchoa = 0.00
            precioIngCebolla = 0.00
            precioIngChorizo = 0.00
            precioIngPeperoni = 0.00
            precioIngAceituna = 0.00
            precioIngPimiento = 0.00
            precioIngSalchicha = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            continuarResumeniW.setEnabled(false)
        }
        
    }
    
    @IBAction func Peperoni(_ value: Bool) {
        if value == true{
           sinIngredientesSwitchiW.setOn(false)
            ingredientePeperoni = "Peperoni"
            precioIngPeperoni = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredientePeperoni = ""
            precioIngPeperoni = 0.00
            activarIngredientes()
            
        }
    }
    @IBAction func Jamon(_ value: Bool) {
        if value == true{
           sinIngredientesSwitchiW.setOn(false)
            ingredienteJamon = "Jamón"
            precioIngJamon = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredienteJamon = ""
            precioIngJamon = 0.00
            activarIngredientes()
            
        }
    }
    @IBAction func aceituna(_ value: Bool) {
        if value == true{
           sinIngredientesSwitchiW.setOn(false)
            ingredienteAceituna = "Aceituna"
            precioIngAceituna = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredienteAceituna = ""
            precioIngAceituna = 0.00
            activarIngredientes()
          
        }
    }
    @IBAction func cebolla(_ value: Bool) {
        if value == true{
           sinIngredientesSwitchiW.setOn(false)
            ingredienteCebolla = "Cebolla"
            precioIngCebolla = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredienteCebolla = ""
            precioIngCebolla = 0.00
            activarIngredientes()
        }
    }
    @IBAction func chorizo(_ value: Bool) {
        if value == true{
           sinIngredientesSwitchiW.setOn(false)
            ingredienteChorizo = "Chorizo"
            precioIngChorizo = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredienteChorizo = ""
            precioIngChorizo = 0.00
            activarIngredientes()
           
        }
    }
    @IBAction func pavo(_ value: Bool) {
        if value == true{
           sinIngredientesSwitchiW.setOn(false)
            ingredientePavo = "Pavo"
            precioIngPavo = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredientePavo = ""
            precioIngPavo = 0.00
            activarIngredientes()
        }
        
    }
    @IBAction func salchicha(_ value: Bool) {
        if value == true{
            sinIngredientesSwitchiW.setOn(false)
            ingredienteSalchicha = "Salchicha"
            precioIngSalchicha = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredienteSalchicha = ""
            precioIngSalchicha = 0.00
            activarIngredientes()
            
        }
    }
    @IBAction func pimiento(_ value: Bool) {
        if value == true{
            sinIngredientesSwitchiW.setOn(false)
            ingredientePimiento = "Pimiento"
            precioIngPimiento = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredientePimiento = ""
            precioIngPimiento = 0.00
            activarIngredientes()
            
        }
    }
    @IBAction func pina(_ value: Bool) {
        if value == true{
           sinIngredientesSwitchiW.setOn(false)
            ingredientePina = "Piña"
            precioIngPina = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredientePina = ""
            precioIngPina = 0.00
            activarIngredientes()
            
        }
        
    }
    @IBAction func archoa(_ value: Bool) {
        if value == true{
           sinIngredientesSwitchiW.setOn(false)
            ingredienteArchoa = "Archoa"
            precioIngArchoa = 0.40
            ingredientes = ""
            precioIngredientes = 0.00
            activarIngredientes()
            continuarResumeniW.setEnabled(true)
        }else{
            ingredienteArchoa = ""
            precioIngArchoa = 0.00
            activarIngredientes()
            
        }
        
    }
    @IBAction func continuarResumen() {
        let ingrLabel = ingredientesYPrecio().0
        let precioIngrLabel = ingredientesYPrecio().1
        let sumaDeValores = sumarValores().0
        let impuestoVU = sumarValores().1
        let sumaTotalConIVU = sumarValores().2
        let valoresGlobales4 = tomarValores(contTam: tamano4, contPrecTam: precioTamano4, contMasa2: masa4, presContMasa2: preMasa4, contQue2: queso4, preConQue2: preQueso4, contIngre2: ingrLabel, preConIngre2: precioIngrLabel, sumaValores: sumaDeValores, ivu: impuestoVU, sumaGlobal: sumaTotalConIVU, nombrePedido: "")
        
        pushController(withName: "Resumen", context: valoresGlobales4)
    }
    func ingredientesYPrecio()->(String, Double){
        var ingrPizza: String = ""
        var precioIngrPizza: Double = 0.00
        var precioSinIngr: Double = 0.00
        var precioPeper: Double = 0.00
        var precioJam: Double = 0.00
        var precioAcei: Double = 0.00
        var precioCeb: Double = 0.00
        var precioChor: Double = 0.00
        var precioPav: Double = 0.00
        var precioSalch: Double = 0.00
        var precioPimi: Double = 0.00
        var precioPina: Double = 0.00
        var precioArch: Double = 0.00
       
        for i in arregloIngredientes{
            if ingredienteSalchicha != ""{
                precioSalch = precioIngSalchicha
                precioIngrPizza = precioIngrPizza + precioSalch
            }else if ingredientePimiento != ""{
                precioPimi = precioIngPimiento
                precioIngrPizza = precioIngrPizza + precioPimi
            }else if ingredientePina != ""{
                precioPina = precioIngPina
                precioIngrPizza = precioIngrPizza + precioPina
            }else if ingredienteArchoa != ""{
                precioArch = precioIngArchoa
                precioIngrPizza = precioIngrPizza + precioArch
            }else if ingredientePavo != ""{
                precioPav = precioIngPavo
                precioIngrPizza = precioIngrPizza + precioPav
            }else if ingredienteChorizo != ""{
                precioChor = precioIngChorizo
                precioIngrPizza = precioIngrPizza + precioChor
            }else if ingredienteCebolla != ""{
                precioCeb = precioIngCebolla
                precioIngrPizza = precioIngrPizza + precioCeb
            }else if ingredienteAceituna != ""{
                precioAcei = precioIngAceituna
                precioIngrPizza = precioIngrPizza + precioAcei
            }else if ingredienteJamon != ""{
                precioJam = precioIngJamon
                precioIngrPizza = precioIngrPizza + precioJam
            }else if ingredientePeperoni != ""{
                precioPeper = precioIngPeperoni
                precioIngrPizza = precioIngrPizza + precioPeper
            }else{
                precioIngrPizza = precioIngrPizza + precioSinIngr
            }
        }
        arregloIngredientes = arregloIngredientes.filter(){$0 != ""}
        ingrPizza = arregloIngredientes.joined(separator: ",")
        return (ingrPizza, precioIngrPizza)
    }
    func activarIngredientes(){
        
        arregloIngredientes = [ingredientes,ingredientePeperoni,ingredienteJamon, ingredienteAceituna, ingredienteArchoa, ingredientePina, ingredientePimiento, ingredienteSalchicha, ingredientePavo, ingredienteChorizo, ingredienteCebolla]
        if ingredientes == "" && ingredientePeperoni == "" && ingredienteJamon == ""
            && ingredienteAceituna == "" && ingredienteArchoa == "" && ingredientePina == "" && ingredientePimiento == "" && ingredienteSalchicha == "" && ingredientePavo == "" && ingredienteChorizo == "" && ingredienteCebolla == ""{
            continuarResumeniW.setEnabled(false)
        }else{
            continuarResumeniW.setEnabled(true)
        }
    }
    func sumarValores()->(Double,Double,Double){
        let sumaSinImpuestos = precioTamano4 + preMasa4 + preQueso4 + ingredientesYPrecio().1
        let impuestos: Double = 0.1115 * sumaSinImpuestos
        let sumaTotal: Double = sumaSinImpuestos + impuestos
        return (sumaSinImpuestos,impuestos,sumaTotal)
    }
    
}
