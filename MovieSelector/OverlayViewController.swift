//
//  OverlayViewController.swift
//  MovieSelector
//
//  Created by Alex Beattie on 8/1/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import UIKit
import MovieSelectorBridge

class OverlayViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var movieItem:Movie!
//    {
//        didSet {
//            configureView()
//        }
//    }
    func configureView() {
        if let movie = self.movieItem {
            self.titleLabel.text = movie.title
            self.descriptionTextView.text = movie.description
        }
    }
    
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        self.view.bounds.size = CGSize(width: UIScreen.main.bounds.size.width - 20, height: 200)
//        self.view.layer.cornerRadius = 5
//    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

//    @IBAction func closePressed(_ sender: Any) {
//        presentingViewController?.dismiss(animated: true, completion: nil)
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureView()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
