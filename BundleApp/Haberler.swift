//
//  Haberler.swift
//  BundleApp
//
//  Created by EZGİ KARABAY on 25.09.2023.
//

import Foundation

class Haberler {
    var id:Int?
    var kaynakAd:String?
    var haberBaslik:String?
    var resim:String?
    var zaman:String?
    
    init(id: Int, kaynakAd: String, haberBaslik:String, resim: String, zaman: String) {
        self.id = id
        self.kaynakAd = kaynakAd
        self.haberBaslik = haberBaslik
        self.resim = resim
        self.zaman = zaman
    }
}
