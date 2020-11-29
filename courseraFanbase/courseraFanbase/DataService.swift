//
//  DataService.swift
//  courseraFanbase
//
//  Created by Akshay Devkate on 25/11/20.
//  Copyright © 2020 Akshay Devkate. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let categories = [
        
        Category(name: "Sholey", imageName: "sholey.png"),
        Category(name: "Zindagi na milegi dobara", imageName: "znmd.png"),
        Category(name: "Jungle Book", imageName: "harrypotter.png"),
        Category(name: "New movie", imageName: "junglebook.png"),
        Category(name: "Movie 2", imageName: "junglebook.png"),
        Category(name: "Jungle Book", imageName: "harrypotter.png"),
        Category(name: "New movie", imageName: "junglebook.png"),
        Category(name: "Movie 2", imageName: "junglebook.png")
    ]
    
    private let Sholey = [
   actor(aname: "Name one", photo: "s1.png"),
    //actor(aname: "Name Two", photo: "s2"),
    //actor(aname: "Name Three", photo: "s3"),
    //actor(aname: "Name Four", photo: "s4"),
    //actor(aname: "Name Five", photo: "s5"),
    ]
    
    func getCategories()-> [Category]{
        return categories
    }
 
    func getProducts(name: String) -> [actor]{
        switch name{
        case "Sholey":
            return getSholey()
        default:
            return getSholey()
        }
        }
    
    
    func getSholey() -> [actor]{
        return Sholey
    }
    }
    
    
    
