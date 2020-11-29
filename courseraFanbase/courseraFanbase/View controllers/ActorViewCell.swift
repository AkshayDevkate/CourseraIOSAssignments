//
//  ActorViewCell.swift
//  courseraFanbase
//
//  Created by Akshay Devkate on 26/11/20.
//  Copyright © 2020 Akshay Devkate. All rights reserved.
//

import UIKit

class ActorViewCell: UICollectionViewCell {
    
    @IBOutlet weak var actorImage: UIImageView!
    
    @IBOutlet weak var actorName: UILabel!
    
    func updateView(product: actor){
        
        actorImage.image = UIImage(named: product.photo )
        actorName.text = product.aname
    }
    
    
}
