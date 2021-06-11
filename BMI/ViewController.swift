//
//  ViewController.swift
//  BMI
//
//  Created by hungnt on 6/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input_cannang: UITextField!
    
    @IBOutlet weak var input_chieucao: UITextField!
    
    @IBOutlet weak var output_chiso: UILabel!
    @IBOutlet weak var output_ketqua: UILabel!
    
    @IBOutlet weak var btn_tinh: UIButton!
    
    @IBAction func tinhAction(_ sender: Any) {
        let cannang=input_cannang.text
        let chieucao = input_chieucao.text
        
        let cannangN=Double(cannang!)!
        let chieucaoN = Double(chieucao!)!
        
    
        let chiso = cannangN / (chieucaoN*2)
        
        if Double(chiso)<18.5 {
            output_ketqua.text="you gay"
        };if Double(chiso)<25 && Double(chiso)>18.5  {
            output_ketqua.text="you ok"
        }else{
            output_ketqua.text="you beo"
        }
        
        
         
        output_chiso.text=String(chiso)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

