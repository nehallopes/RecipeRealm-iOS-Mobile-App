//
//  AddItemViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/9/24.
//

import UIKit

//This is a protocol to add new items
protocol AddItemDelegate: AnyObject {
    func AddItem(item: (qnt_value: String, dsp_value: String))
}

class AddItemViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //This will recognise tap gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(Dismiss_Keyboard))
        view.addGestureRecognizer(tapGesture)
    }

    weak var delegate: AddItemDelegate?
    
    @IBOutlet weak var SwipeDown_label: UILabel!
    @IBOutlet weak var Title_label: UILabel!
    @IBOutlet weak var Dsp_label: UILabel!
    @IBOutlet weak var Qnt_label: UILabel!
    @IBOutlet weak var Dsp_input: UITextField!
    @IBOutlet weak var Qnt_input: UITextField!
  
    
    @IBAction func Add_btn(_ sender: Any) {
        let description = Dsp_input.text ?? ""
        let quantity = Qnt_input.text ?? ""
        
        //This will if both description and quantity are not empty
        if !description.isEmpty && !quantity.isEmpty {
            delegate?.AddItem(item: (qnt_value: quantity, dsp_value: description))
            dismiss(animated: true, completion: nil)
        }
        else if quantity.isEmpty {
            Handle_error_msg(message: "Invalid Quantity")
        }
        else if description.isEmpty {
            Handle_error_msg(message: "Invalid Description")
        }
    }
    
    //This fucntion displays an error message
    func Handle_error_msg(message: String) {
        let Error_popup = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let Cancel_popup = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        Error_popup.addAction(Cancel_popup)
        present(Error_popup, animated: true, completion: nil)
    }
    
    //This function is to dismiss keyboard when tapped on the screen
    @objc func Dismiss_Keyboard() {
        view.endEditing(true)
    }
}
