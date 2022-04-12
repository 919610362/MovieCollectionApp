//
//  MovieCollectionViewCell.swift
//  MovieCollectionViewApp
//
//  Created by Bandharapu,Manish Goud on 4/12/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignMovie(with movie: Movie){
        imageViewOutlet.image = movie.image
    }
}
