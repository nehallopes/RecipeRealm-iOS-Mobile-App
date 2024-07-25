//
//  MealManager.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/16/24.
//

import Foundation

class MealManager {
    static let shared = MealManager()
    
    private init() {}
    
    //This will store the meal plan
    var Meal_Plan: [(breakfast: String, lunch: String, dinner: String, dessert: String)] = [] {
        didSet {
            NotificationCenter.default.post(name: Notification.Name("MealListUpdated"), object: nil)
        }
    }
    
    //This function will clear the meals plan
    func Clr_Meals() {
        Meal_Plan = []
    }
}
