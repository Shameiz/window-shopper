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

    func getCategories () -> [Category]{
        return categories
    }
}
