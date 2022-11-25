//
//  Yemekler.swift
//  BFAGida
//
//  Created by Furkan Akman on 25.11.2022.
//

import Foundation
class Yemekler  {
    var yemek_id:Int?
    var yemek_ad:String?
    var fiyat:Int?
    var kisi:Kisiler?

    init(){
        
    }
    
    init(yemek_id:Int,yemek_ad:String,fiyat:Int,kisi:Kisiler) {
        self.yemek_id = yemek_id
        self.yemek_ad = yemek_ad
        self.fiyat = fiyat
        self.kisi = kisi
        
    }
}
