//
//  ViewController.swift
//  CollectionView
//
//  Created by 박수연 on 2022/02/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        models.append(Model(text: "First",
                            imageName: "images_1"))
        models.append(Model(text: "Second",
                            imageName: "images_2"))
        models.append(Model(text: "Third",
                            imageName: "images_3"))
        models.append(Model(text: "Demo",
                            imageName: "images_4"))
        
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
   
    }
    
    //Tabel
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath)as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    


}

struct Model {
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        
        self.text = text
        self.imageName = imageName
        
    
    }
}
