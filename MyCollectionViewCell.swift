//
//  MyCollectionViewCell.swift
//  CollectionView
//
//  Created by 박수연 on 2022/02/13.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myimageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure(with model: Model) {
        self.myLabel.text = model.text
        self.myimageView.image = UIImage(named: model.imageName)
    }
}
