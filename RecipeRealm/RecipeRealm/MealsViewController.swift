//
//  MealsViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/7/24.
//

import UIKit

class MealsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        //This will update meal planner textviews
        Update_meals()
            
        //This will look for notification is meals are been updated
        NotificationCenter.default.addObserver(self, selector: #selector(mealListUpdated), name: Notification.Name("MealListUpdated"), object: nil)
    }

    @IBOutlet weak var Title_label: UILabel!
    @IBOutlet weak var Note_label: UILabel!
    @IBOutlet weak var Breakfast_lbl: UILabel!
    @IBOutlet weak var Lunch_lbl: UILabel!
    @IBOutlet weak var Dinner_lbl: UILabel!
    @IBOutlet weak var Dessert_lbl: UILabel!
    @IBOutlet weak var AddItem_screen: UIButton!
    @IBOutlet weak var breakfast_screen: UITextView!
    @IBOutlet weak var lunch_screen: UITextView!
    @IBOutlet weak var dinner_screen: UITextView!
    @IBOutlet weak var dessert_screen: UITextView!
        
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
        
    @objc func mealListUpdated() {
        Update_meals()
    }
      
    //This function updates the text on textviews
    func Update_meals() {
        let mealList = MealManager.shared.Meal_Plan
            
        var breakfast_Text = ""
        var lunch_Text = ""
        var dinner_Text = ""
        var dessert_Text = ""
            
        for meal in mealList {
            if !meal.breakfast.isEmpty {
                breakfast_Text += "\(meal.breakfast)\n"
            }
            if !meal.lunch.isEmpty {
                lunch_Text += "\(meal.lunch)\n"
            }
            if !meal.dinner.isEmpty {
                dinner_Text += "\(meal.dinner)\n"
            }
            if !meal.dessert.isEmpty {
                dessert_Text += "\(meal.dessert)\n"
            }
        }
            
        breakfast_screen.text = breakfast_Text
        lunch_screen.text = lunch_Text
        dinner_screen.text = dinner_Text
        dessert_screen.text = dessert_Text
    }

    //This override function is to navigate to AddMealViewController page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MealSegue" {
            if let addMealVC = segue.destination as? AddMealViewController {
                addMealVC.delegate = self
            }
        }
    }
}

extension MealsViewController: AddMealDelegate {
    //This function helps add new meals 
    func AddMeals(meal: (breakfast: String, lunch: String, dinner: String, dessert: String)) {
        MealManager.shared.Meal_Plan.append(meal)
    }
}
