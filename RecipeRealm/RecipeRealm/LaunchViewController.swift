//
//  LaunchViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/17/24.
//

import UIKit

class LaunchViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var Logo_img: UIImageView!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            
        // This will animate the logo
        UIView.animate(withDuration: 2.0, animations: {
            self.Logo_img.alpha = 2.0
        }) { (_) in
            self.navigateToMainScreen()
            }
    }

    // This function will help us to navigate to the tab bar screen (homepage)
    func navigateToMainScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let mainVC = storyboard.instantiateViewController(withIdentifier: "MainScreen") as? TabBarViewController {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let window = windowScene.windows.first {
                window.rootViewController = mainVC
                window.makeKeyAndVisible()
            }
        }
    }

}
