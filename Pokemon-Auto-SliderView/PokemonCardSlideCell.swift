//
//  PokemonCardSlideCell.swift
//  Pokemon-Auto-SliderView
//
//  Created by Bagus setiawan on 25/01/21.
//

import UIKit

class PokemonCardSlideCell: UICollectionViewCell {
    
    @IBOutlet weak var mainBackground: UIView!
    @IBOutlet weak var idView: UIView!
    @IBOutlet weak var imageViewCard: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var atkNumberLabel: UILabel!
    @IBOutlet weak var dfnsNumberLabel: UILabel!
    @IBOutlet weak var atkProgress: UIProgressView!
    @IBOutlet weak var dfnsProgress: UIProgressView!
    
}
