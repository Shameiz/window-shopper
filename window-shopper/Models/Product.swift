//
//  Product.swift
//  window-shopper
//
//  Created by Shameiz Rangwala on 2018-02-12.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import Foundation
struct Product{
    private(set) public var imageName : String
    private(set) public var title : String
    private(set) public var price : String


    init(imageName:String,title:String,price:String){
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
