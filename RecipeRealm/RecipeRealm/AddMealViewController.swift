//
//  AddMealViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/9/24.
//

import UIKit

//This is a protocol to add new meal
protocol AddMealDelegate: AnyObject {
    func AddMeals(meal: (breakfast: String, lunch: String, dinner: String, dessert: String))
}

class AddMealViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //This will recognise tap gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(Dismiss_Keyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    weak var delegate: AddMealDelegate?
    
    @IBOutlet weak var SwipeDown_label: UILabel!
    @IBOutlet weak var Title_label: UILabel!
    @IBOutlet weak var Breakfast_label: UILabel!
    @IBOutlet weak var Lunch_label: UILabel!
    @IBOutlet weak var Dinner_label: UILabel!
    @IBOutlet weak var Dessert_label: UILabel!
    @IBOutlet weak var Breakfast_input: UITextField!
    @IBOutlet weak var Lunch_input: UITextField!
    @IBOutlet weak var Dinner_input: UITextField!
    @IBOutlet weak var Dessert_input: UITextField!
    
    @IBAction func Add_btn(_ sender: Any) {
        let breakfast = Breakfast_input.text ?? ""
        let lunch = Lunch_input.text ?? ""
        let dinner = Dinner_input.text ?? ""
        let dessert = Dessert_input.text ?? ""
        
        //This will check if at least one input is given
        if !breakfast.isEmpty || !lunch.isEmpty || !dinner.isEmpty || !dessert.isEmpty {
            delegate?.AddMeals(meal: (breakfast: breakfast, lunch: lunch, dinner: dinner, dessert: dessert))
            dismiss(animated: true, completion: nil)
        } else {
            handleErrorMessage(message: "Please fill in at least one meal")
        }
    }
    
    //This function is for error handling
    func handleErrorMessage(message: String) {
        let errorPopup = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let cancelPopup = UIAlertAction(title: "OK", style: .default, handler: nil)
        errorPopup.addAction(cancelPopup)
        present(errorPopup, animated: true, completion: nil)
    }
    
    //This function is to dismiss keyboard when tapped on the screen
    @objc func Dismiss_Keyboard() {
        view.endEditing(true)
    }
}
