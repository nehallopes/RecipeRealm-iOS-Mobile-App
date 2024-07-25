//
//  ShoppingListViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/7/24.
//

import UIKit

class ShoppingListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        update_Op_Screen()
        
        //This will look for notification if list is been updated
        NotificationCenter.default.addObserver(self, selector: #selector(shoppingListUpdated), name: Notification.Name("ShoppingListUpdated"), object: nil)
    }

    @IBOutlet weak var Title_label: UILabel!
    @IBOutlet weak var AddItem_screen: UIButton!
    @IBOutlet weak var Op_screen: UITextView!
    
    deinit {
        //Will remove notfication observer
        NotificationCenter.default.removeObserver(self)
    }
        
    @objc func shoppingListUpdated() {
        update_Op_Screen()
    }
    
    //This function shows shopping list in textview
    func update_Op_Screen() {
        let Item_list = ShoppingListManager.shared.Item_list

        var op = ""
        
        for Item in Item_list {
            op += "\(Item.qnt_value) x \(Item.dsp_value)\n"
        }
        
        Op_screen.text = op
    }
    
    //This will clear the list
    func clearList() {
        ShoppingListManager.shared.clearItemList()
    }
    
    //Will use this override function to navigate towards AddItemViewController page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ItemSegue" {
                if let addItemVC = segue.destination as? AddItemViewController {
                    addItemVC.delegate = self
                }
            }
        }
    }

extension ShoppingListViewController: AddItemDelegate {
    //This will add each item to shopping list
    func AddItem(item: (qnt_value: String, dsp_value: String)) {
        ShoppingListManager.shared.Item_list.append(item)
    }
}


