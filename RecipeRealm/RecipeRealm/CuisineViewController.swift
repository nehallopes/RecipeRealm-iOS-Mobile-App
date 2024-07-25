//
//  CuicineViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/9/24.
//

import UIKit

class CuisineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func Indian_btn(_ sender: Any) {
        RecipeManager.shared.selectedCuisine = "Indian"
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    @IBAction func Chinese_btn(_ sender: Any) {
        RecipeManager.shared.selectedCuisine = "Chinese"
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    @IBAction func Thai_btn(_ sender: Any) {
        RecipeManager.shared.selectedCuisine = "Thai"
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    @IBAction func Mexican_btn(_ sender: Any) {
        RecipeManager.shared.selectedCuisine = "Mexican"
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    @IBAction func Italian_btn(_ sender: Any) {
        RecipeManager.shared.selectedCuisine = "Italian"
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    @IBAction func American_btn(_ sender: Any) {
        RecipeManager.shared.selectedCuisine = "American"
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    @IBAction func Turkish_btn(_ sender: Any) {
        RecipeManager.shared.selectedCuisine = "Turkish"
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    @IBAction func Australian_btn(_ sender: Any) {
        RecipeManager.shared.selectedCuisine = "Australian"
        RecipeManager.shared.selectedCourse = ""
        RecipeManager.shared.selectedName = ""
        navigateToTableViewController()
    }
    
    func navigateToTableViewController() {
        if let tableVC = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController {
                navigationController?.pushViewController(tableVC, animated: true)
        }
    }
}
