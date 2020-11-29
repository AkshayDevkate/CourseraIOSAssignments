//
//  actor.swift
//  courseraFanbase
//
//  Created by Akshay Devkate on 26/11/20.
//  Copyright © 2020 Akshay Devkate. All rights reserved.
//

import Foundation

class actor{
    
    
    private (set) public var aname: String
    private (set) public var photo: String
    
    init(aname: String, photo: String) {
        self.photo = photo
        self.aname = aname
    }
}
