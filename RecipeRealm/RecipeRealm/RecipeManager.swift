//
//  RecipeManager.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/17/24.
//

import Foundation

class RecipeManager {
    static let shared = RecipeManager()
    
    private init() {}
    
    var selectedCourse: String = ""
    var selectedCuisine: String = ""
    var selectedName: String = ""

}
