//
//  CourseViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/9/24.
//

import UIKit

class CourseViewController: UIViewController {

    @IBAction func breakfast_btn(_ sender: Any) {
        RecipeManager.shared.selectedCourse = "Breakfast"
        RecipeManager.shared.selectedCuisine = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    
    @IBAction func Appetizer_btn(_ sender: Any) {
        RecipeManager.shared.selectedCourse = "Appetizer"
        RecipeManager.shared.selectedCuisine = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    
    @IBAction func MainCourse_btn(_ sender: Any) {
        RecipeManager.shared.selectedCourse = "Main Course"
        RecipeManager.shared.selectedCuisine = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    
    @IBAction func Dessert_btn(_ sender: Any) {
        RecipeManager.shared.selectedCourse = "Dessert"
        RecipeManager.shared.selectedCuisine = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    
    @IBAction func Juice_btn(_ sender: Any) {
        RecipeManager.shared.selectedCourse = "Juice"
        RecipeManager.shared.selectedCuisine = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    
    func navigateToTableViewController() {
        if let tableVC = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController {
            navigationController?.pushViewController(tableVC, animated: true)
        }
    }
}
