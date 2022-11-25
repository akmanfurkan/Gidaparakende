//
//  ViewController3.swift
//  BFAGida
//
//  Created by Furkan Akman on 25.11.2022.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var yemekTableView: UITableView!
        
        var yemekListe = [Yemekler]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            veritabaniKopyala()
            yemekListe = Yemeklerdao().tumYemeklerAl()
            
            
            
            yemekTableView.delegate = self
            yemekTableView.dataSource = self
            
        }
        
        override func viewWillAppear(_ animated: Bool) {
            yemekListe = Yemeklerdao().tumYemeklerAl()
            print(yemekListe)
            yemekTableView.reloadData()
        }
        override func  prepare(for segue: UIStoryboardSegue, sender: Any?){
            let indeks = sender as? Int
            
            if segue.identifier == "toSepet"{
                let gidilecekVC = segue.destination as! ViewController4
                gidilecekVC.yemek = yemekListe[indeks!]
            }
        }
        func veritabaniKopyala(){
            let bundleYolu = Bundle.main.path(forResource: "bfa", ofType: ".sqlite")
            
            let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
            
            let fileManager = FileManager.default
            
            let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("bfa.sqlite")
            
            if fileManager.fileExists(atPath: kopyalanacakYer.path) {
                print("Veritabanı zaten var.Kopyalamaya gerek yok")
                
            }else{
                
                do {
                    
                    try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
                    
                }catch{
                    
                    print(error)
                }
            }
        }
    }
    extension ViewController3: UITableViewDelegate,UITableViewDataSource{
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return yemekListe.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let yemek = yemekListe[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "yemekHucre", for: indexPath) as! TableViewHucre
            
            
            cell.labelUrun.text = yemek.yemek_ad
            cell.labelFiyat.text = "\(String(yemek.fiyat!))₺"
            
            return cell
            
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            self.performSegue(withIdentifier: "toSepet", sender: indexPath.row)
        }
    }

