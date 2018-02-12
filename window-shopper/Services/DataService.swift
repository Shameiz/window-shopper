//
//  DataService.swift
//  window-shopper
//
//  Created by Shameiz Rangwala on 2018-02-08.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()


    private let categories = [
        Category(title:"SHIRTS", imageName:"shirts.png"),
        Category(title: "HOODIES",imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(imageName: "hat01.png", title: "Champreme Graphic Beanie", price: "$25"),
        Product(imageName: "hat02.png", title: "Champreme Black Beanie", price: "$25"),
        Product(imageName: "hat03.png", title: "Champreme White Beanie", price: "$25"),
        Product(imageName: "hat04.png", title: "Champreme Snapback", price: "$55")
    ]
    
    private let hoodies = [
        Product(imageName: "hoodie01.png", title: "Champreme Hoodie Grey", price: "$75"),
        Product(imageName: "hoodie02.png", title: "Champreme Hoodie Red", price: "$75"),
        Product(imageName: "hoodie03.png", title: "Champreme Hoodie Grey", price: "$75"),
        Product(imageName: "hoodie04.png", title: "Champreme Hoodie Black", price: "$70")
    ]
    
    private let shirts = [
        Product(imageName: "shirt01.png", title: "Champreme Shirt Black", price: "$25"),
        Product(imageName: "shirt02.png", title: "Champreme Shirt Grey", price: "$30"),
        Product(imageName: "shirt03.png", title: "Champreme Shirt Red", price: "$20"),
        Product(imageName: "shirt04.png", title: "Champreme Shirt Grey", price: "$25"),
        Product(imageName: "shirt05.png", title: "Champreme Shirt Black", price: "$25")
    ]
    
    private let digitalGoods = [Product]()

    func getCategories () -> [Category]{
        return categories
    }
    
    func getProducts(title:String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getDigital() -> [Product]{
        return digitalGoods
    }
}
