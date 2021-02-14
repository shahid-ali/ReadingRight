//
//  MyFavMealViewModel.swift
//  ReadingRight
//
//  Created by Shahid Ali on 2/14/21.
//  Copyright © 2021 Shahid. All rights reserved.
//




import RxSwift
import RealmSwift
class MyFavMealViewModel {
var mealsPS=PublishSubject<[Meal]>()
	var mealsMain:[Meal]=[]
	
	
	func getMyFavMeals()
	{
		let realm = try! Realm()
		let meals = realm.objects(Meal.self)
		mealsMain=Array(meals)
		mealsPS.onNext(mealsMain)
	}
	
	func getMealAt(index:Int) -> Meal
	{
	return mealsMain[index]
	}
}
