//
//  actorVC.swift
//  courseraFanbase
//
//  Created by Akshay Devkate on 26/11/20.
//  Copyright © 2020 Akshay Devkate. All rights reserved.
//

import UIKit

class actorVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource{
   
    
    
    
    @IBOutlet weak var ActorTable: UICollectionView!
    
    private (set) public var actors = [actor]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        ActorTable.dataSource = self
        ActorTable.delegate = self 
       
        
    }
    
        func initActors(category: Category){
    
            actors = DataService.instance.getProducts(name: category.name)
           }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorViewCell", for: indexPath ) as? ActorViewCell{
            let actor = actors[indexPath.row]
            cell.updateView(product: actor)
            return cell
        
        }
       
            return ActorViewCell()
       
       }

   
}
