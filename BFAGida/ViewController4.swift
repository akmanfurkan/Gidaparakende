//
//  ViewController4.swift
//  BFAGida
//
//  Created by Furkan Akman on 25.11.2022.
//

import UIKit

class ViewController4: UIViewController {
    var yemek:Yemekler?
    @IBOutlet weak var labelUrunAdi: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let y = yemek {
            
            labelUrunAdi.text = y.yemek_ad
            
           
        }

        // Do any additional setup after loading the view.
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
