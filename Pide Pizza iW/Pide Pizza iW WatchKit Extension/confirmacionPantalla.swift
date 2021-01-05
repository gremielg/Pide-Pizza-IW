//
//  confirmacionPantalla.swift
//  Pide Pizza iW WatchKit Extension
//
//  Created by Gremiel Gonzalez on 12/30/20.
//  Copyright © 2020 Gremiel Gonzalez. All rights reserved.
//

import WatchKit
import Foundation


class confirmacionPantalla: WKInterfaceController {
    @IBOutlet weak var tamanoLabel6: WKInterfaceLabel!
    @IBOutlet weak var precioTamLabel6: WKInterfaceLabel!
    @IBOutlet weak var masaLabel6: WKInterfaceLabel!
    @IBOutlet weak var precioMasaLabel6: WKInterfaceLabel!
    @IBOutlet weak var quesoLabel6: WKInterfaceLabel!
    @IBOutlet weak var precioQuesoLabel6: WKInterfaceLabel!
    @IBOutlet weak var ingredientesLabel6: WKInterfaceLabel!
    @IBOutlet weak var precioIngredientesLabel6: WKInterfaceLabel!
    @IBOutlet weak var subtotalLabel6: WKInterfaceLabel!
    @IBOutlet weak var impuestoLabel6: WKInterfaceLabel!
    @IBOutlet weak var totalLabel6: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let sumAll6 = context as! tomarValores
        subtotalLabel6.setText(numberFormatter.string(for: sumAll6.suma))
        
        let ivuVenta6 = context as! tomarValores
        impuestoLabel6.setText(numberFormatter2.string(for: ivuVenta6.impuestosVenta))
       
        let sumaConImp6 = context as! tomarValores
        totalLabel6.setText(numberFormatter.string(for: sumaConImp6.sumaTotal))
       
        
        let traPag6 =  context as! tomarValores
        tamanoLabel6.setText(traPag6.tamVal)
        
        let vtraPag6 = context as! tomarValores
        precioTamLabel6.setText(numberFormatter.string(for: vtraPag6.preTamVal))

        
        let mraPag6 = context as! tomarValores
        let pmraPag6 = context as! tomarValores
        masaLabel6.setText(mraPag6.masVal)
        precioMasaLabel6.setText(numberFormatter.string(for: pmraPag6.preMasVal))
        
        
        let qraPag = context as! tomarValores
        let vqraPag = context as! tomarValores
        quesoLabel6.setText(qraPag.queVal)
        precioQuesoLabel6.setText(numberFormatter.string(for: vqraPag.preQueVal))
        
        
        let iraPag = context as! tomarValores
        let viraPag = context as! tomarValores
        ingredientesLabel6.setText(iraPag.ingVal)
        precioIngredientesLabel6.setText(numberFormatter.string(for: viraPag.preIngrVal))
        
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

}
