//
//  DetailViewController.swift
//  
//
//  Created by Bethany Bin on 2/6/18.
//

import UIKit

class DetailViewController: UIViewController {
    
    enum MovieKeys {
        static let title = "title"
        static let releaseDate = "release"
        static let voteAverage = "vote_average"
        static let posterPath = "poster_path"
        static let voteCount = "vote_count"
        static let backDropPath = "backdrop_path"
        static let id = "id"
    }

    
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    var movie: Movie!
    var posterURL: URL!
    var backdropURL: URL!
    var overviewText: String!
    var titleText: String!
    var releaseDateText: String!
    let baseURLString = "https://image.tmdb.org/t/p/w500"
    override func viewDidLoad() {
        super.viewDidLoad()
        if let movie = movie {
            overviewLabel.text = movie.overview
            if let url = movie.posterUrl {
                posterImageView.af_setImage(withURL: url)
            }
            releaseDateLabel.text = movie.releaseDate
            titleLabel.text = movie.title
            backDropImageView.af_setImage(withURL: movie.backDropUrl!)
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
