//
//  MainViewController.swift
//  MovieTrending
//
//  Created by Zafer Çalışkan on 20.02.2023.
//

import UIKit

class MainViewController: UIViewController {

    //IBoutlets:
    @IBOutlet var tableView: UITableView!
//    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    //Variables
    var cellDataSource: [MovieTableCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        configView()
        bindViewModel()
    }
    
    
    
    func configView(){
        self.view.backgroundColor = .systemGray
        
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    func openDetail(movieId: Int) {
        guard let movie = viewModel.retriveMovie(with: movieId) else { return }
        let detailsViewModel = DetailMovieViewModel(movie: movie)
        let detailsController = DetailMovieViewController(viewModel: detailsViewModel)
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsController, animated: true)
        }
        
    }
    
    func bindViewModel() {
//        viewModel.isLoading.bind { [weak self] isLoading in
//            guard let self = self, let isLoading = isLoading else { return }
//            DispatchQueue.main.async {
//                if isLoading {
//                    self.activityIndicator.startAnimating()
//                } else {
//                    self.activityIndicator.stopAnimating()
//                }
//            }
//        }
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self, let movies = movies else { return }
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
    

}
