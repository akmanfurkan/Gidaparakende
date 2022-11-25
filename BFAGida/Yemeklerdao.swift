//
//  Yemeklerdao.swift
//  BFAGida
//
//  Created by Furkan Akman on 25.11.2022.
//

import Foundation
class Yemeklerdao {
    let db:FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("bfa.sqlite")
        
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func tumYemeklerAl() -> [Yemekler] {
        var liste = [Yemekler]()
        db?.open()
        
        do {
            let rs = try
            db!.executeQuery("SELECT * FROM yemekler", values: nil)
            
            while rs.next() {
                let yemek = Yemekler(yemek_id: Int(rs.string(forColumn: "yemek_id"))!, yemek_ad: rs.string(forColumn: "yemek_ad")!, fiyat: Int(rs.string(forColumn: "fiyat"))!)
                liste.append(yemek)
            }
        } catch  {
            print(error.localizedDescription)
            
        }
        
        
        db?.close()
        return liste
    }
    func yemekEkle(yemek_ad:String,fiyat:Int){
        db?.open()
        
        do {
            try db!.executeUpdate("INSERT INTO yemekler (yemek_ad,fiyat) VALUES (?,?)", values: [yemek_ad,fiyat])
        } catch  {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func yemekSil(yemek_ad:String){
        
        db?.open()
        
        do {
            
            try db!.executeUpdate("DELETE FROM yemekler WHERE yemek_ad = ?", values: [yemek_ad])
            
        } catch  {
            print(error.localizedDescription)
        }
        
        db?.close()
        
    }
    
}
