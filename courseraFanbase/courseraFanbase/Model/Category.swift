//
//  Category.swift
//  courseraFanbase
//
//  Created by Akshay Devkate on 25/11/20.
//  Copyright © 2020 Akshay Devkate. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var name: String
    private(set) public var imageName: String
    
    init(name: String,imageName: String) {
        
        self.name = name
        self.imageName = imageName
    }
}
