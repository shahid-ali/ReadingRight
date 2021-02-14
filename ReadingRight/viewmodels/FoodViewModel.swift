//
//  FoodViewModel.swift
//  ReadingRight
//
//  Created by Shahid Ali on 2/14/21.
//  Copyright © 2021 Shahid. All rights reserved.
//

import RxSwift
import RxAlamofire
import Alamofire
import AlamofireObjectMapper
import RealmSwift


class FoodViewModel: NSObject {
	var meal:Meal?
	
	func fetchRandomFood() -> Observable<Meal>
	{
	return Observable<Meal>.create { (observer) -> Disposable in
		
		let URL = "https://www.themealdb.com/api/json/v1/1/random.php"
		Alamofire.request(URL).responseObject {[weak self] (response: DataResponse<FoodItem>) in
		
		guard response.result.isSuccess else {
				print("Error")
				observer.on(.error(response.result.error!))
				return
		}
			
		if let foodItemResponse = response.result.value,
			let meals=foodItemResponse.meals,
			meals.count > 0
		{
			self?.meal=meals[0]
			observer.on(.next(meals[0]))
		}
		observer.on(.completed)
		}
		
		return Disposables.create()
	}
	}
	
	
	func addMealtoFavList()
	{
		if let meal=meal
		{
		let realm = try! Realm()
		// Open a thread-safe transaction.
		try! realm.write {
			// Add the instance to the realm.
			realm.add(meal)
		}
		}
	}

}
