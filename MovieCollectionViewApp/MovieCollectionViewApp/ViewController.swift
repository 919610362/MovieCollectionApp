//
//  ViewController.swift
//  MovieCollectionViewApp
//
//  Created by Bandharapu,Manish Goud on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //create a cell
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        //assign movies to cell
        cell.assignMovie(with: movies[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOutlet.text = "\(movies[indexPath.row].title)"
        yearReleased.text = "\(movies[indexPath.row].releasedYear)"
        movieRating.text = "\(movies[indexPath.row].movieRating)"
        movieRevenue.text = "\(movies[indexPath.row].boxOffice)"
        
    }
    

    
    @IBOutlet weak var titleOutlet: UILabel!
    
    
    @IBOutlet weak var yearReleased: UILabel!
    
    
    @IBOutlet weak var movieRating: UILabel!
    
    
    @IBOutlet weak var movieRevenue: UILabel!
    
    
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
    }


}

