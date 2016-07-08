//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var shoppingList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let numbers = [6, 4, 12, 4]
        let items = ["Bananas", "Apples", "Eggs", "Rolls"]
        makeShoppingList(items, quantityOfItems: numbers)

        
        
    }
    func makeShoppingList(itemName:[String], quantityOfItems: [Int]) ->Array <String> {
        
        var index = 0
        var result: [String] = []

        for (number, item) in zip(quantityOfItems, itemName) {
            index += 1
            let combined = "\(index). \(number) \(item)"
            result.append(combined)
            
        }
        shoppingList = result
        print(result)
        return shoppingList
        
        
    }
    
}