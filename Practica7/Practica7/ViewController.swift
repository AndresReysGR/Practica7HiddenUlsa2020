//
//  ViewController.swift
//  Practica7
//
//  Created by Alumno on 9/3/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var sldMedidor: UISlider!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var btnVisitante: UIButton!
    @IBOutlet weak var imgAprovacion: UIImageView!
    @IBOutlet weak var lblIngreso: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgAprovacion.isHidden = true
        lblIngreso.isHidden = true
        btnNuevo.isHidden = true
        btnVisitante.isEnabled = true
        sldMedidor.isEnabled = true
        
    }

    @IBAction func dochaingesldMedidor(_ sender: Any) {
        lblTemperatura.text = "\(String(format: "%.1f", sldMedidor.value))°C"
        if sldMedidor.value >= 38.0 {
            lblTemperatura.textColor = UIColor.red
        } else {
            lblTemperatura.textColor = UIColor.black
        }
    }
    
    @IBAction func doChangebtnVisitante(_ sender: Any) {
        if sldMedidor.value >= 38.0{
            imgAprovacion.image = UIImage(named: "wrong")
            lblIngreso.text = "Ingreso NO autorizado para \(txtNombre.text!)"
        } else {
            imgAprovacion.image = UIImage(named: "check")
            lblIngreso.text = "Ingreso autorizado para \(txtNombre.text!)"
        }
        imgAprovacion.isHidden = false
        lblIngreso.isHidden = false
        btnNuevo.isHidden = false
        btnVisitante.isEnabled = false
        sldMedidor.isEnabled = false
    }
    
    
    @IBAction func btnNuevo(_ sender: Any) {
        imgAprovacion.isHidden = true
        lblIngreso.isHidden = true
        btnNuevo.isHidden = true
        btnVisitante.isEnabled = true
        sldMedidor.isEnabled = true
    }
    
    
    
}

