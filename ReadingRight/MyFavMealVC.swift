//
//  SecondViewController.swift
//  ReadingRight
//
//  Created by Shahid Ali on 2/14/21.
//  Copyright © 2021 Shahid. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MyFavMealVC: UIViewController {
	var disposeBag=DisposeBag()
	var viewModel=MyFavMealViewModel()
	
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.tableView.register(UINib(nibName: "FavMealCell", bundle: nil), forCellReuseIdentifier: "FavMealCell")
		bindViewModel()
	}

	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		viewModel.getMyFavMeals()
	}
	
	
	//MARK:bindViewModel
    func bindViewModel() {
        _=viewModel.mealsPS.bind(to: tableView.rx.items){[weak self](table, index, model) in
            
            if let cell=table.dequeueReusableCell(withIdentifier: "FavMealCell") as? FavMealCell {
				cell.setDataToView(meal:model)
                return cell
            } else {
                return UITableViewCell()
            }
			
			
			
        }.disposed(by:disposeBag)
         
		
		tableView.rx.itemSelected
		.subscribe(onNext: { [weak self] indexPath in
		  
		  if let mealsDetailsVC=self?.storyboard?.instantiateViewController(identifier:"MealDetailVC") as? MealDetailVC,
			let meal=self?.viewModel.getMealAt(index:indexPath.row)
			{
				mealsDetailsVC.meal=meal
				self?.present(mealsDetailsVC, animated:true, completion: {})
			}
			else
			{
				
			}
			
		}).disposed(by: disposeBag)
         
    }

}

