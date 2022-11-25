//
//  ViewController6.swift
//  BFAGida
//
//  Created by Furkan Akman on 25.11.2022.
//

import UIKit

class ViewController6: UIViewController {

    @IBOutlet weak var textfieldUrunid: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonUrunSil(_ sender: Any) {
        if let id = textfieldUrunid.text{
            
            
                Yemeklerdao().yemekSil(yemek_ad: id)
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
