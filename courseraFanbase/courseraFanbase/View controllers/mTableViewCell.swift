//
//  mTableViewCell.swift
//  courseraFanbase
//
//  Created by Akshay Devkate on 25/11/20.
//  Copyright © 2020 Akshay Devkate. All rights reserved.
//

import UIKit

class mTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    
    func updateViews(category: Category){
        movieImage.image = UIImage(named: category.imageName)
        movieName.text = category.name 
    }

}
