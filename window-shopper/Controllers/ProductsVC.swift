//
//  ProductsVC.swift
//  window-shopper
//
//  Created by Shameiz Rangwala on 2018-02-12.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var productsCollection : UICollectionView!
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource=self
        productsCollection.delegate=self
    }

    func initProducts(category:Category){
        self.products = DataService.instance.getProducts(title: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }

}
