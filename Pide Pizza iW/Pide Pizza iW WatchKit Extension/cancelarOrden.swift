//
//  cancelarOrden.swift
//  Pide Pizza iW WatchKit Extension
//
//  Created by Gremiel Gonzalez on 12/30/20.
//  Copyright © 2020 Gremiel Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class cancelarOrden: WKInterfaceController {

    @IBOutlet weak var noButtom: WKInterfaceButton!
    
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
      
        sumNoIVU = sumAll.suma
        let ivuVenta = context as! tomarValores
        
        IVU = ivuVenta.impuestosVenta
        let sumaConImp = context as! tomarValores
        
        sumTotal5 = sumaConImp.sumaTotal
        
        let traPag2 =  context as! tomarValores
       
        tamano5 = traPag2.tamVal
        let vtraPag2 = context as! tomarValores
    
        precioTam5 = vtraPag2.preTamVal
        
        let mraPag5 = context as! tomarValores
        let pmraPag5 = context as! tomarValores
      
        masa5 = mraPag5.masVal
        precioMas5 = pmraPag5.preMasVal
        
        let qraPag = context as! tomarValores
        let vqraPag = context as! tomarValores
      
        queso5 = qraPag.queVal
        precioQue5 = vqraPag.preQueVal
        
        let iraPag = context as! tomarValores
        let viraPag = context as! tomarValores
      
        ingredientes5 = iraPag.ingVal
        precioIngr5 = viraPag.preIngrVal
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
    @IBAction func presNoButton() {
        let valoresGlobalesGen = tomarValores(contTam: tamano5, contPrecTam: precioTam5, contMasa2: masa5, presContMasa2: precioTam5, contQue2: queso5, preConQue2: precioQue5, contIngre2: ingredientes5, preConIngre2: precioIngr5, sumaValores: sumNoIVU, ivu: IVU, sumaGlobal: sumTotal5, nombrePedido: "")
        pushController(withName: "Resumen", context: valoresGlobalesGen)
    }
    
}
