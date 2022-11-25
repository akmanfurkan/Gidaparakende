//
//  Kisiler.swift
//  BFAGida
//
//  Created by Furkan Akman on 25.11.2022.
//

import Foundation
class Kisiler{
    var kisi_id:Int?
    var kisi_ad:String?
    var kisi_cinsiyet:String?
    var kisi_sehir:String?
    var kisi_adres:String?
    var kisi_tel:Int?
    
    init(){
        
    }
    
    init(kisi_id: Int, kisi_ad: String, kisi_cinsiyet: String, kisi_sehir: String, kisi_adres: String, kisi_tel: Int) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_cinsiyet = kisi_cinsiyet
        self.kisi_sehir = kisi_sehir
        self.kisi_adres = kisi_adres
        self.kisi_tel = kisi_tel
    }
}
