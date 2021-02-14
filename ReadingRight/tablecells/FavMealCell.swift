//
//  ArchiveCollectionCell.swift
//  Taskey
//
//  Created by Talat Baig on 12/3/19.
//  Copyright © 2019 Algante. All rights reserved.
//

import UIKit
import ImageLoader



class FavMealCell: UITableViewCell {
	@IBOutlet weak var mealThumbImageView: UIImageView!
	@IBOutlet weak var titleLbl: UILabel!
	@IBOutlet weak var instructionsLbl: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()
	}
    
    
    func setDataToView(meal : Meal) {
		titleLbl.text=meal.strMeal
		instructionsLbl.text=meal.strInstructions
		
		if  meal.strMealThumb != "" ,
			let url = URL(string: meal.strMealThumb)
		{
	    mealThumbImageView.load.request(with: url)
		}
	}
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
}
