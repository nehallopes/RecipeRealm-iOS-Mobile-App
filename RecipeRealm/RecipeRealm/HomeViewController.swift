//
//  ViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/4/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //This will recognise tap gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(Dismiss_Keyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    //This button will show us all the recipes
    @IBAction func AllRecipes_btn(_ sender: Any) {
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedCuisine = ""
        RecipeManager.shared.selectedName = "" 
        nav_TableViewController()
    }
    
    //Below we have is search bar and search bar button to search reipes
    @IBOutlet weak var SearchBar: UISearchBar!
    
    @IBAction func SearchGo_btn(_ sender: Any) {
        if let searchText = SearchBar.text, !searchText.isEmpty {
            RecipeManager.shared.selectedName = searchText
            nav_TableViewController()
        } else {
            showAlert(message: "Please enter a recipe name to search.")
        }
    }
    
    //This function will help us to navigate to TableViewController
    func nav_TableViewController() {
        if let tableVC = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController {
            navigationController?.pushViewController(tableVC, animated: true)
        }
    }
    
    //This function will show alert message
    func showAlert(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    //This function is to dismiss keyboard when tapped on the screen
    @objc func Dismiss_Keyboard() {
        view.endEditing(true)
    }
}


