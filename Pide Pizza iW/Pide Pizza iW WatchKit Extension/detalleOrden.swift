//
//  detalleOrden.swift
//  Pide Pizza iW WatchKit Extension
//
//  Created by Gremiel Gonzalez on 12/6/20.
//  Copyright © 2020 Gremiel Gonzalez. All rights reserved.

import WatchKit
import Foundation


class detalleOrden: WKInterfaceController {
    @IBOutlet weak var tamanoLabel: WKInterfaceLabel!
    @IBOutlet weak var precioTamanoLabel: WKInterfaceLabel!
    @IBOutlet weak var masaLabel: WKInterfaceLabel!
    @IBOutlet weak var precioMasaLabel: WKInterfaceLabel!
    @IBOutlet weak var quesoLabel: WKInterfaceLabel!
    @IBOutlet weak var precioQuesoLabel: WKInterfaceLabel!
    @IBOutlet weak var precioIngredientesLabel: WKInterfaceLabel!
    @IBOutlet weak var subtotalLabel: WKInterfaceLabel!
    @IBOutlet weak var ingredientesLabel: WKInterfaceLabel!
    @IBOutlet weak var totalLabel: WKInterfaceLabel!
    @IBOutlet weak var impuestoLabel: WKInterfaceLabel!

    @IBOutlet weak var siConfirmacioniW: WKInterfaceButton!
    @IBOutlet weak var noConfirmacioniW: WKInterfaceButton!
    
    var tamano5: String = ""
    var masa5: String = ""
    var queso5: String = ""
    var ingredientes5: String = ""
    
    var precioTam5: Double = 0.00
    var precioMas5: Double = 0.00
    var precioQue5: Double = 0.00
    var precioIngr5: Double = 0.00
    var sumNoIVU: Double = 0.00
    var IVU: Double = 0.00
    var sumTotal5: Double = 0.00

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let sumAll = context as! tomarValores
        subtotalLabel.setText(numberFormatter.string(for: sumAll.suma))
        sumNoIVU = sumAll.suma
        let ivuVenta = context as! tomarValores
        impuestoLabel.setText(numberFormatter2.string(for: ivuVenta.impuestosVenta))
        IVU = ivuVenta.impuestosVenta
        let sumaConImp = context as! tomarValores
        totalLabel.setText(numberFormatter.string(for: sumaConImp.sumaTotal))
        sumTotal5 = sumaConImp.sumaTotal
        
        let traPag2 =  context as! tomarValores
        tamanoLabel.setText(traPag2.tamVal)
        tamano5 = traPag2.tamVal
        let vtraPag2 = context as! tomarValores
        precioTamanoLabel.setText(numberFormatter.string(for: vtraPag2.preTamVal))
        precioTam5 = vtraPag2.preTamVal
        
        let mraPag5 = context as! tomarValores
        let pmraPag5 = context as! tomarValores
        masaLabel.setText(mraPag5.masVal)
        precioMasaLabel.setText(numberFormatter.string(for: pmraPag5.preMasVal))
        masa5 = mraPag5.masVal
        precioMas5 = pmraPag5.preMasVal
        
        let qraPag = context as! tomarValores
        let vqraPag = context as! tomarValores
        quesoLabel.setText(qraPag.queVal)
        precioQuesoLabel.setText(numberFormatter.string(for: vqraPag.preQueVal))
        queso5 = qraPag.queVal
        precioQue5 = vqraPag.preQueVal
        
        let iraPag = context as! tomarValores
        let viraPag = context as! tomarValores
        ingredientesLabel.setText(iraPag.ingVal)
        precioIngredientesLabel.setText(numberFormatter.string(for: viraPag.preIngrVal))
        ingredientes5 = iraPag.ingVal
        precioIngr5 = viraPag.preIngrVal
        
    }
    lazy var numberFormatter: NumberFormatter = {
         let decimals = NumberFormatter()
         decimals.minimumFractionDigits = 2
         decimals.maximumFractionDigits = 2

         return decimals
    }()
    lazy var numberFormatter2: NumberFormatter = {
         let decimals = NumberFormatter()
         decimals.minimumFractionDigits = 3
         decimals.maximumFractionDigits = 5

         return decimals
    }()
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func siBoton() {
        let valoresGlobales5 = tomarValores(contTam: tamano5, contPrecTam: precioTam5, contMasa2: masa5, presContMasa2: precioTam5, contQue2: queso5, preConQue2: precioQue5, contIngre2: ingredientes5, preConIngre2: precioIngr5, sumaValores: sumNoIVU, ivu: IVU, sumaGlobal: sumTotal5, nombrePedido: "")
        pushController(withName: "confirmacion", context: valoresGlobales5)
    }
    @IBAction func presNOConfir() {
        let valoresGlobales5A = tomarValores(contTam: tamano5, contPrecTam: precioTam5, contMasa2: masa5, presContMasa2: precioTam5, contQue2: queso5, preConQue2: precioQue5, contIngre2: ingredientes5, preConIngre2: precioIngr5, sumaValores: sumNoIVU, ivu: IVU, sumaGlobal: sumTotal5, nombrePedido: "")
        pushController(withName: "Cancelar", context: valoresGlobales5A)
    }
    
    
}
