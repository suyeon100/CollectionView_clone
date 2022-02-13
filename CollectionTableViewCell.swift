//
//  CollectionTableViewCell.swift
//  CollectionView
//
//  Created by 박수연 on 2022/02/13.
//

import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    static let identifier = "CollectionTableView"
    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionTableView", bundle: nil)
    }
    
    func configure(with models: [Model]) {
        self.models = models
        
        collectionView.reloadData()
    }

    @IBOutlet var collectionView: UICollectionView!
    
    var models = [Model]()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //collectionView
    
    func  collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int ) -> Int {
        
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 250, height: 250)
    }
}
