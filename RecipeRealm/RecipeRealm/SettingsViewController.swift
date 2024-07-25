//
//  SettingsViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/7/24.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //This will clear the meal plan
    @IBAction func ClearMeals_btn(_ sender: Any) {
        showClearAlert(for: "Meal Plan", completion: {
            MealManager.shared.Clr_Meals()
        })
    }
    
    //This will clear the shopping list
    @IBAction func ClearList_btn(_ sender: Any) {
        showClearAlert(for: "Shopping List", completion: {
            ShoppingListManager.shared.clearItemList()
        })
    }
    
    //This will delete all the bookmarks
    @IBAction func DeleteBookmark_btn(_ sender: Any) {
        showDeleteAlert(for: "Bookmarked Recipes", completion: {
            BookmarkManager.shared.ClearBookmark()
        })
    }
   
    //This is alert fucntion for confirming clear
    private func showClearAlert(for title: String, completion: @escaping () -> Void) {
        let alert = UIAlertController(title: "Clear \(title)", message: "Are you sure you want to clear \(title)?", preferredStyle: .alert)
        let No = UIAlertAction(title: "No", style: .cancel, handler: nil)
        let Yes = UIAlertAction(title: "Yes", style: .destructive) { _ in
            completion()
        }
        alert.addAction(No)
        alert.addAction(Yes)
            
        present(alert, animated: true, completion: nil)
    }
    
    //This is alert function for confirming delete
    private func showDeleteAlert(for title: String, completion: @escaping () -> Void) {
        let alert = UIAlertController(title: "Delete \(title)", message: "Are you sure you want to delete all \(title)?", preferredStyle: .alert)
        let No = UIAlertAction(title: "No", style: .cancel, handler: nil)
        let Yes = UIAlertAction(title: "Yes", style: .destructive) { _ in
            completion()
        }
        alert.addAction(No)
        alert.addAction(Yes)
        
        present(alert, animated: true, completion: nil)
    }
}
