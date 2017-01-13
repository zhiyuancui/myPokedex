//
//  PokemonDetailVC.swift
//  Podex
//
//  Created by Zhiyuan Cui on 1/13/17.
//  Copyright © 2017 Zhiyuan Cui. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var TypeLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!   
    @IBOutlet weak var cuurentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    @IBOutlet weak var evoLbl: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        cuurentEvoImg.image = img
        pokedexLbl.text = "\(pokemon.pokedexId)"
        
        pokemon.downloadPokemonDetail{
            
            self.updateUI()
        
        }
        // Do any additional setup after loading the view.
    }

    func updateUI(){
        
        attackLbl.text  = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text  = pokemon.height
        weightLbl.text  = pokemon.weight
        descriptionLbl.text = pokemon.description
        TypeLbl.text    = pokemon.type
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
