//
//  ViewController5.swift
//  BFAGida
//
//  Created by Furkan Akman on 25.11.2022.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var yemekAdiTextfield: UITextField!
    
    
    @IBOutlet weak var yemekFiyatiTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func yemekekle(_ sender: Any) {
        if let ad = yemekAdiTextfield.text , let fiyat = yemekFiyatiTextfield.text {
            
            if let f = Int(fiyat) {
                Yemeklerdao().yemekEkle(yemek_ad: ad, fiyat: f)
            }
            
        }
    
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
