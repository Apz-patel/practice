//
//  ViewController.swift
//  practice
//
//  Created by Ayush Patel on 19/01/23.
//

import UIKit
struct Product{
    var image: UIImage!
    var ProductName : String
    var weight : String
    var price : Int
    
    
    
}


class ViewController: UIViewController {
    
    @IBOutlet weak var productCollection: UICollectionView!
    var arrOfProduct : [Product] = []
    var row : Int = 2
    var spacing : Int = 16
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setup()
    }
    func setup (){
        LoadData()
        nib()
    }
    func LoadData(){
        let product1 : Product = Product(image: UIImage(named: "Image"), ProductName: "green tea", weight: "100gm", price: 100)
        let product2 : Product = Product(image: UIImage(named: "Image 4"), ProductName: "penuts", weight: "100gm", price: 120)
        let product3 : Product = Product(image: UIImage(named: "Image 5"), ProductName: "almomds", weight: "100gm", price: 90)
        let product4 : Product = Product(image: UIImage(named: "Image 2"), ProductName: "rise", weight: "100gm", price: 140)
        let product5 : Product = Product(image: UIImage(named: "Image 3"), ProductName: "fries", weight: "100gm", price: 110)
        let product6 : Product = Product(image: UIImage(named: "Image 1"), ProductName: "frozenfruit", weight: "100gm", price: 123)
        arrOfProduct = [product1,product2,product3,product4,product5,product6]
        
    }
    
    func nib(){
        let nib : UINib = UINib(nibName: "Collcetion1CollectionViewCell", bundle: nil)
        productCollection.register(nib, forCellWithReuseIdentifier:"Collcetion1CollectionViewCell" )
        
    }
}
extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOfProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : Collcetion1CollectionViewCell = productCollection.dequeueReusableCell(withReuseIdentifier: "Collcetion1CollectionViewCell", for: indexPath) as! Collcetion1CollectionViewCell
        let productItem = arrOfProduct[indexPath.row]
        cell.productName.text = ("\(productItem.ProductName)")
        cell.weight.text = ("\(productItem.weight)")
        cell.price.text = ("\(productItem.price)")
        cell.imageview.image = arrOfProduct[indexPath.row].image
        cell.layer.borderWidth = 2
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
extension ViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size  = CGFloat((row+1) * spacing)
        let unableWight = collectionView.frame.width-size
        let product  = unableWight/CGFloat(row)
        
        return CGSize(width: product, height: 250)
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 20, left: 8, bottom: 20, right: 8)
    }

   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
        16
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat{
        16
    }

}

    

