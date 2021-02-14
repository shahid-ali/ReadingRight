//
//  FirstViewController.swift
//  ReadingRight
//
//  Created by Shahid Ali on 2/14/21.
//  Copyright © 2021 Shahid. All rights reserved.
//

import UIKit
import RxSwift
import ImageLoader


class MealDetailVC: UIViewController {

	var disposeBag=DisposeBag()
	fileprivate let viewModel=FoodViewModel()
	
	var meal:Meal?
	
	@IBOutlet weak var progressIndicator: UIActivityIndicatorView!
	@IBOutlet weak var scrollView: UIScrollView!
	@IBOutlet weak var containerView: UIView!
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var titleLbl: UILabel!
	@IBOutlet weak var favBtn: UIButton!
	@IBOutlet weak var instructionLbl: UILabel!
	@IBOutlet weak var ingredients: UILabel!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		favBtn.addTarget(self, action: #selector(favBtnTapped), for: .touchUpInside)
	}
	
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		if(meal==nil)
		{
		favBtn.isHidden=true
		progressIndicator.startAnimating()
		favBtn.setImage(UIImage.init(named:"fav_icon_unselected"), for: .normal)
		viewModel.fetchRandomFood().subscribe {[weak self] (event) in
		   self?.progressIndicator.stopAnimating()
			switch event {
			case .next(let meal):
				
			self?.setValues(meal:meal)
			
			case .error(let error):
				print("error \(error.localizedDescription)")
			case .completed:
				print("completed")
			}
		}.disposed(by: disposeBag)
		}
		else{
			setValues(meal:meal!)
		}
	}
	
	
	override func viewWillLayoutSubviews(){
	super.viewWillLayoutSubviews()
	scrollView.contentSize = CGSize(width:UIScreen.main.bounds.width-32, height: UIScreen.main.bounds.height+300)
	}
	
	
	func setValues(meal:Meal)
	{
		favBtn.isHidden=false
		titleLbl.text=meal.strMeal
		instructionLbl.text=meal.strInstructions
		ingredients.text=meal.getIngredients()
		
		if  meal.strMealThumb != "" ,
			let url = URL(string: meal.strMealThumb)
		{
	    imageView.load.request(with: url)
		}
		else
		{
			print("url nil")
		}
	}
	
	
	@objc func favBtnTapped(_ sender: AnyObject?) {
		viewModel.addMealtoFavList()
		favBtn.setImage(UIImage.init(named:"fav_icon_selected"), for: .normal)
	}
}

