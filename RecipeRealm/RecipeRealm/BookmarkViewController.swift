//
//  BookmarkViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/7/24.
//

import UIKit

class BookmarkViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "BookmarkCell")
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateBookmarkList), name: .bookmarkedRecipesUpdated, object: nil)
        
        updateBookmarkList()
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var BookmarkLabel: UILabel!
    
    //This handles recipes index
    var RecipeIndex: Int? {
        get {
            return SelectedRecipeManager.shared.RecipeIndex
        }
        set {
            SelectedRecipeManager.shared.RecipeIndex = newValue
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: .bookmarkedRecipesUpdated, object: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = BookmarkManager.shared.bookmarkedRecipes.count
        updateNoBookmarkLabel(count: count)
        
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookmarkCell", for: indexPath)
        let recipe = BookmarkManager.shared.bookmarkedRecipes[indexPath.row]
        cell.textLabel?.text = recipe.name
        
        return cell
    }
    
    //This is table view delegate function
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        RecipeIndex = indexPath.row
        performSegue(withIdentifier: "showRecipeDetail", sender: self)
    }
    
    //This will update bookmarks list
    @objc func updateBookmarkList() {
        tableView.reloadData()
    }
    
    //This function will hide and show the bookmark label
    private func updateNoBookmarkLabel(count: Int) {
        if count == 0 {
            BookmarkLabel.isHidden = false
        } else {
            BookmarkLabel.isHidden = true
        }
    }
    
    //This function will navigate to recipe details page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipeDetail" {
            if let index = RecipeIndex {
                let selectedRecipe = BookmarkManager.shared.bookmarkedRecipes[index]
                
                if let recipeDetailVC = segue.destination as? RecipeDetailViewController {
                    recipeDetailVC.recipe = selectedRecipe
                }
            }
        }
    }
}
