//
//  Collcetion1CollectionViewCell.swift
//  practice
//
//  Created by Ayush Patel on 19/01/23.
//

import UIKit

class Collcetion1CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageview : UIImageView!
    @IBOutlet weak var productName : UILabel!
    @IBOutlet weak var weight : UILabel!
    @IBOutlet weak var price : UILabel!
    @IBOutlet weak var addToCart : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
