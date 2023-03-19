//
//  peopleFiveViewController.swift
//  mealCalculate
//
//  Created by 王衍智 on 2023/2/27.
//

import UIKit

class peopleFiveViewController: UIViewController {

    @IBOutlet weak var mealPrice: UITextField!
    @IBOutlet weak var serviceCharge: UITextField!
    @IBOutlet weak var individualPrice: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mealPrice.keyboardType = .numberPad
        serviceCharge.keyboardType = .numberPad

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        mealPrice.resignFirstResponder()
        serviceCharge.resignFirstResponder()
        if mealPrice.text == "" || serviceCharge.text == ""{
            mealPrice.text = "0"
            serviceCharge.text = "0"
        }else{
                let tip = Double(mealPrice.text!)! * Double(serviceCharge.text!)! / 100
                let price = Double(mealPrice.text!)! + tip
                
                individualPrice.text = String(price) + "元"

                
            }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        mealPrice.text = ""
        serviceCharge.text = ""
        individualPrice.text = "0元"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
