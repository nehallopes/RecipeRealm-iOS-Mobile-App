//
//  ShoppingListManager.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/16/24.
//

import Foundation

class ShoppingListManager {
    static let shared = ShoppingListManager()
    
    private init() {}
    
    var Item_list: [(qnt_value: String, dsp_value: String)] = [] {
        didSet {
            NotificationCenter.default.post(name: Notification.Name("ShoppingListUpdated"), object: nil)
        }
    }
    
    //This fucntion clears Items in the list
    func clearItemList() {
        Item_list = []
    }
}

