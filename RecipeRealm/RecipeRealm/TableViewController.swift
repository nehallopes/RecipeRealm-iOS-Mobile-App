//
//  TableViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/9/24.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Recipes"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "RecipeCell")
    }
    
    //This is table view function which will get the recipes data in cells form
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var filteredRecipes = recipes
        
        if !RecipeManager.shared.selectedCourse.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.course == RecipeManager.shared.selectedCourse }
        }
        
        if !RecipeManager.shared.selectedCuisine.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.cuisine == RecipeManager.shared.selectedCuisine }
        }
        
        if !RecipeManager.shared.selectedName.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.name.lowercased().contains(RecipeManager.shared.selectedName.lowercased()) }
        }
        
        return filteredRecipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
        
        //Below are the filters to search the recipes
        var filteredRecipes = recipes
        
        if !RecipeManager.shared.selectedCourse.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.course == RecipeManager.shared.selectedCourse }
        }
        
        if !RecipeManager.shared.selectedCuisine.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.cuisine == RecipeManager.shared.selectedCuisine }
        }
        
        if !RecipeManager.shared.selectedName.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.name.lowercased().contains(RecipeManager.shared.selectedName.lowercased()) }
        }
        
        let recipe = filteredRecipes[indexPath.row]
        configureCell(cell, with: recipe)
        
        return cell
    }
    
    func configureCell(_ cell: UITableViewCell, with recipe: Recipe) {
        
        cell.textLabel?.text = recipe.name
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = UIColor.clear
    }

    //This is table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var filteredRecipes = recipes
        
        if !RecipeManager.shared.selectedCourse.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.course == RecipeManager.shared.selectedCourse }
        }
        
        if !RecipeManager.shared.selectedCuisine.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.cuisine == RecipeManager.shared.selectedCuisine }
        }
        
        if !RecipeManager.shared.selectedName.isEmpty {
            filteredRecipes = filteredRecipes.filter { $0.name.lowercased().contains(RecipeManager.shared.selectedName.lowercased()) }
        }
        
        let selectedRecipe = filteredRecipes[indexPath.row]
        showDetail(for: selectedRecipe)
    }

    //This function will show the detail of selected recipe
    func showDetail(for recipe: Recipe) {
        if let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RecipeDetailViewController") as? RecipeDetailViewController {
            detailVC.recipe = recipe
            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}
