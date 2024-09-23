//
//  RecipeDetailViewController.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/9/24.
//

import UIKit

class RecipeDetailViewController: UIViewController, UIScrollViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupGestures()
        fetchRecipeImage()
    }
    
    var recipe: Recipe?
    
    @IBOutlet weak var RecipeScrollView: UIScrollView!
    @IBOutlet weak var RecipeImageView: UIImageView!
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var CourseLabel: UILabel!
    @IBOutlet weak var CuisineLabel: UILabel!
    @IBOutlet weak var ProcedureLabel: UILabel!
    @IBOutlet weak var IngredientsLabel: UILabel!
    
    @IBAction func Bookmark_btn(_ sender: Any) {
        guard let recipe = recipe else { return }
        BookmarkManager.shared.addRecipeToBookmarks(recipe: recipe)
        showAlert(message: "Recipe bookmarked!")
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    //This function is for setting attributed color to the labels
    func setupUI() {
        guard let recipe = recipe else { return }
        
        title = recipe.name
        
        TimeLabel.attributedText = createAttributedText(prefix: "Time: ", content: "\(recipe.time)", prefixColor: .black, contentColor: .systemTeal)
        
        CourseLabel.attributedText = createAttributedText(prefix: "Course: ", content: "\(recipe.course)", prefixColor: .black, contentColor: .systemTeal)
        
        CuisineLabel.attributedText = createAttributedText(prefix: "Cuisine: ", content: "\(recipe.cuisine)", prefixColor: .black, contentColor: .systemTeal)
        
        ProcedureLabel.attributedText = createAttributedText(prefix: "Procedure: ", content: "\(recipe.procedure)", prefixColor: .black, contentColor: .systemTeal)
        
        IngredientsLabel.attributedText = createAttributedText(prefix: "Ingredients: ", content: "\(recipe.ingredients)", prefixColor: .black, contentColor: .systemTeal)
        
        TimeLabel.font = UIFont.boldSystemFont(ofSize: 16)
        CourseLabel.font = UIFont.boldSystemFont(ofSize: 16)
        CuisineLabel.font = UIFont.boldSystemFont(ofSize: 16)
        ProcedureLabel.font = UIFont.boldSystemFont(ofSize: 16)
        IngredientsLabel.font = UIFont.boldSystemFont(ofSize: 16)
    }

    //This function is used to format the labels
    func createAttributedText(prefix: String, content: String, prefixColor: UIColor, contentColor: UIColor) -> NSAttributedString {
        let prefixAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: prefixColor,
            .font: UIFont.boldSystemFont(ofSize: 16)
        ]
        
        let contentAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: contentColor,
            .font: UIFont.boldSystemFont(ofSize: 16)
        ]
        
        let prefixText = NSMutableAttributedString(string: prefix, attributes: prefixAttributes)
        let contentText = NSAttributedString(string: "\(content)", attributes: contentAttributes)
        prefixText.append(contentText)
        
        return prefixText
    }

    //This function helps in setting up gesture control
    func setupGestures() {
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap(_:)))
        doubleTapGesture.numberOfTapsRequired = 2
        RecipeImageView.isUserInteractionEnabled = true
        RecipeImageView.addGestureRecognizer(doubleTapGesture)
        
        RecipeScrollView.minimumZoomScale = 1.0
        RecipeScrollView.maximumZoomScale = 5.0
        RecipeScrollView.delegate = self
    }
    
    //This fucntion will fetch/ get the image from pexel api with help of recipe name
    func fetchRecipeImage() {
        guard let recipe = recipe else { return }

        let searchQuery = recipe.name.replacingOccurrences(of: " ", with: "+")
        let urlString = "https://api.pexels.com/v1/search?query=\(searchQuery)&per_page=1"

        guard let url = URL(string: urlString) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("API KEY", forHTTPHeaderField: "Authorization")

        let task = URLSession.shared.dataTask(with: request) { [weak self] (data, response, error) in
            guard let data = data, error == nil else {
                print("Error fetching image from Pexels API: \(error?.localizedDescription ?? "Unknown error")")
                return
            }

            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(PexelsResponse.self, from: data)
                if let photo = result.photos.first {
                    self?.loadImage(from: photo.src.medium)
                } else {
                    self?.showAlert(message: "No image found for the given query.")
                }
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }
        task.resume()
    }

    //This fucntion will load the image from pexels url
    func loadImage(from url: URL) {
        URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            guard let data = data, error == nil else {
                print("Error downloading image: \(error?.localizedDescription ?? "Unknown error")")
                return
            }

            if let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self?.RecipeImageView.image = image // Set image to RecipeImageView
                    self?.RecipeImageView.contentMode = .scaleAspectFit
                }
            }
        }.resume()
    }

    //This will hangle gesture to double tap
    @objc func handleDoubleTap(_ gesture: UITapGestureRecognizer) {
        if gesture.state == .recognized {
            if RecipeScrollView.zoomScale == RecipeScrollView.minimumZoomScale {
                let zoomRect = zoomRectForScale(scale: RecipeScrollView.maximumZoomScale, center: gesture.location(in: gesture.view))
                RecipeScrollView.zoom(to: zoomRect, animated: true)
            } else {
                RecipeScrollView.setZoomScale(RecipeScrollView.minimumZoomScale, animated: true)
            }
        }
    }
    
    // This will calculate the zoom rectangle for scaling
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return RecipeImageView
    }
    
    private func zoomRectForScale(scale: CGFloat, center: CGPoint) -> CGRect {
        var zoomRect = CGRect.zero
        zoomRect.size.height = RecipeImageView.frame.size.height / scale
        zoomRect.size.width = RecipeImageView.frame.size.width / scale
        let newCenter = RecipeImageView.convert(center, from: RecipeScrollView)
        zoomRect.origin.x = newCenter.x - (zoomRect.size.width / 2.0)
        zoomRect.origin.y = newCenter.y - (zoomRect.size.height / 2.0)
        return zoomRect
    }
    
    //This is Pexels API response structure
    struct PexelsResponse: Codable {
        let photos: [PexelsPhoto]
    }

    struct PexelsPhoto: Codable {
        let src: PexelsPhotoSource
    }

    struct PexelsPhotoSource: Codable {
        let medium: URL
    }

}
