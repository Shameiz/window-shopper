//
//  Category.swift
//  window-shopper
//
//  Created by Shameiz Rangwala on 2018-02-08.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import Foundation
struct Category{
    private (set) public var title: String
    private (set) public var imageName: String
    
    init(title:String, imageName:String){
        self.title=title
        self.imageName=imageName
    }
}
