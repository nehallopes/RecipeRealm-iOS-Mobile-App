//
//  BookmarkManager.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/16/24.
//

import Foundation

class BookmarkManager {
    static let shared = BookmarkManager()
    
    private init() {}
    
    var bookmarkedRecipes: [Recipe] = [] {
        didSet {
            NotificationCenter.default.post(name: .bookmarkedRecipesUpdated, object: nil)
        }
    }
    
    //This function will add recipes to the bookmark page
    func addRecipeToBookmarks(recipe: Recipe) {
        if !bookmarkedRecipes.contains(where: { $0.name == recipe.name }) {
            bookmarkedRecipes.append(recipe)
        }
    }
    //This function will remove recipes to the bookmark page
    func removeRecipeFromBookmarks(recipe: Recipe) {
        if let index = bookmarkedRecipes.firstIndex(where: { $0.name == recipe.name }) {
            bookmarkedRecipes.remove(at: index)
        }
    }
    
    func ClearBookmark() {
        bookmarkedRecipes = []
    }
}

//A separate class to handle the selected recipe index
class SelectedRecipeManager {
    static let shared = SelectedRecipeManager()
    
    private init() {}
    
    var RecipeIndex: Int?
}

extension Notification.Name {
    static let bookmarkedRecipesUpdated = Notification.Name("BookmarkedRecipesUpdated")
}

