//
//  ViewController.swift
//  BundleApp
//
//  Created by EZGİ KARABAY on 25.09.2023.
//

import UIKit

class Anasayfa: UIViewController {
    
    
    @IBOutlet weak var haberlerCollectionView: UICollectionView!
    
    var haberlerListesi = [Haberler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let h1 = Haberler(id: 1, kaynakAd: "EVRİM AĞACI", haberBaslik: "Bilim insanları, Güneş sisteminin uzaklarında Dünya benzeri bir gezegenin var olabileceğini düşünüyor", resim: "gezegen", zaman: "18 saat önce")
        let h2 = Haberler(id: 2, kaynakAd: "POPULAR SCIENCE", haberBaslik: "Kağıt Pipetler ve Karton Bardaklar Plastik Kadar Zararlı Olabilir", resim: "kagit", zaman: "2 saat önce")
        let h3 = Haberler(id: 3, kaynakAd: "EVRİM AĞACI", haberBaslik: "Hasta Olduğumuzda Neden Ateşimiz Çıkar?", resim: "hasta", zaman: "1 hafta önce")
        let h4 = Haberler(id: 4, kaynakAd: "POPULAR SCIENCE", haberBaslik: "James Web Teleskobu, Galaksinin Öbür Ucundan Dünya'daki Yaşamı Tespit Edebilir", resim: "teleskop", zaman: "5 gün önce")
        let h5 = Haberler(id: 5, kaynakAd: "WEBTEKNO", haberBaslik: "Apple, iPhone 15 Pro'ların Neden Renk Değiştirdiğini Açıkladı", resim: "apple", zaman: "1 gün önce")
        let h6 = Haberler(id: 6, kaynakAd: "BEYAZPERDE.COM", haberBaslik: "Kuru Otlar Üstüne Altın Koza'da Dakikalarca Ayakta Alkışlandı", resim: "altınkoza", zaman: "3 saat önce")
        
        haberlerListesi.append(h1)
        haberlerListesi.append(h2)
        haberlerListesi.append(h3)
        haberlerListesi.append(h4)
        haberlerListesi.append(h5)
        haberlerListesi.append(h6)
        
        haberlerCollectionView.delegate = self
        haberlerCollectionView.dataSource = self
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 10
        
        //10 x 10 x 10 = 30
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik = (ekranGenislik - 30) / 2
        
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik*1.75)
        
        haberlerCollectionView.collectionViewLayout = tasarim
        
    }
}
    
    extension Anasayfa : UICollectionViewDelegate, UICollectionViewDataSource{
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return haberlerListesi.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "haberlerHucre", for: indexPath) as! HaberlerHucre
            
            let haber = haberlerListesi[indexPath.row]
            
            hucre.imageViewHaber.image = UIImage(named: haber.resim!)
            hucre.labelKaynakAd.text = "\(haber.kaynakAd!)"
            hucre.labelHaberBaslik.text = "\(haber.haberBaslik!)"
            hucre.labelHaberZaman.text = "\(haber.zaman!)"
            
            hucre.layer.borderColor = UIColor.lightGray.cgColor
            hucre.layer.borderWidth = 0.3
            hucre.layer.cornerRadius = 15
            
            
            return hucre
        }
    }
    

