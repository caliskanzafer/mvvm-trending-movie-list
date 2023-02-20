//
//  DetailMovieViewController.swift
//  TrendingMovieApp
//
//  Created by Zafer Çalışkan on 20.02.2023.
//

import UIKit
import SDWebImage

class DetailMovieViewController: UIViewController {
    
    
    //IBOutlets
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    //ViewModel
    
    var viewModel: DetailMovieViewModel
    
    init(viewModel: DetailMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }

    func configView() {
        self.title = "Movie Details"
        titleLabel.text = viewModel.movieTitle
        descriptionLabel.text = viewModel.movieDescription
        imageView.sd_setImage(with: viewModel.movieImage)
    }
}
