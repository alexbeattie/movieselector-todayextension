//
//  MoviewDetailViewController.swift
//  MovieSelector
//
//  Created by Alex Beattie on 8/1/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import UIKit
import MovieSelectorBridge

class MoviewDetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescriptionTextView: UITextView!
    
    var movieObject:Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    func configureView() {
       movieTitleLabel.text = movieObject.title
        movieDescriptionTextView.text = movieObject.description
        
        if let availableImage = Movie.getImage(forMovie: movieObject) {
            movieImageView.image = availableImage
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureView()
    }
 

  

}
