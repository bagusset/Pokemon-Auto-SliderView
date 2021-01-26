//
//  ViewController.swift
//  Pokemon-Auto-SliderView
//
//  Created by Bagus setiawan on 25/01/21.
//

import UIKit

class PokemonCardSlideVC: UIViewController {
    
    var getData = [DataModel]()

    @IBOutlet weak var pokemonCardSlideCollectionView: UICollectionView!
    @IBOutlet weak var slideCardPageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fecthData()
        pokemonCardSlideCollectionView.delegate = self
        pokemonCardSlideCollectionView.dataSource = self
        
    }
    
    func fecthData(){
        ApiServices.shared.fecthDataPokemon { (pokemon) in
            DispatchQueue.main.async {
                self.getData = pokemon
                self.pokemonCardSlideCollectionView.reloadData()
            }
        }
    }


}

extension PokemonCardSlideVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        getData.count 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PokemonCardSlideCell

        cell.nameLabel.text = getData[indexPath.row].name
        cell.descLabel.text = getData[indexPath.row].description
        cell.imageView.image = getData[indexPath.row].image
        cell.idNumber.text = String(getData[indexPath.row].id!)
        cell.heightLabel.text = String(getData[indexPath.row].height!)
        cell.weightLabel.text = String(getData[indexPath.row].weight!)
        cell.atkNumberLabel.text = String(getData[indexPath.row].attack!)
        cell.dfnsNumberLabel.text = String(getData[indexPath.row].defense!)
        
        return cell
    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let yourWidth = collectionView.bounds.width/1
//        let yourHeight = yourWidth
//
//        return CGSize(width: yourWidth, height: yourHeight)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets.zero
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
    
    
}

