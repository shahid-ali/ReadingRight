//
//  FoodItem.swift
//  ReadingRight
//
//  Created by Shahid Ali on 2/14/21.
//  Copyright © 2021 Shahid. All rights reserved.
//

import ObjectMapper
import RealmSwift


class FoodItem: Mappable {
	
	var meals: [Meal]?
	
	required init?(map: Map){
	}
	
	func mapping(map: Map) {
		meals <- map["meals"]
	}
}
class Meal:Object, Mappable {
	
	
	override init() {
		print("init")
	}
	override static func primaryKey() -> String? {
        return "idMeal"
    }
	
	@objc dynamic var idMeal=""
	@objc dynamic var strMeal=""
	@objc dynamic var strDrinkAlternate=""
	@objc dynamic var strCategory=""
	@objc dynamic var strArea=""
	@objc dynamic var strInstructions=""
	@objc dynamic var strMealThumb=""
	@objc dynamic var strTags=""
	@objc dynamic var strYoutube=""
	@objc dynamic var strIngredient1=""
	@objc dynamic var strIngredient2=""
	@objc dynamic var strIngredient3=""
	@objc dynamic var strIngredient4=""
	@objc dynamic var strIngredient5=""
	@objc dynamic var strIngredient6=""
	@objc dynamic var strIngredient7=""
	@objc dynamic var strIngredient8=""
	@objc dynamic var strIngredient9=""
	@objc dynamic var strIngredient10=""
	@objc dynamic var strIngredient11=""
	@objc dynamic var strIngredient12=""
	@objc dynamic var strIngredient13=""
	@objc dynamic var strIngredient14=""
	@objc dynamic var strIngredient15=""
	@objc dynamic var strIngredient16=""
	@objc dynamic var strIngredient17=""
	@objc dynamic var strIngredient18=""
	@objc dynamic var strIngredient19=""
	@objc dynamic var strIngredient20=""
	@objc dynamic var strMeasure1=""
	@objc dynamic var strMeasure2=""
	@objc dynamic var strMeasure3=""
	@objc dynamic var strMeasure4=""
	@objc dynamic var strMeasure5=""
	@objc dynamic var strMeasure6=""
	@objc dynamic var strMeasure7=""
	@objc dynamic var strMeasure8=""
	@objc dynamic var strMeasure9=""
	@objc dynamic var strMeasure10=""
	@objc dynamic var strMeasure11=""
	@objc dynamic var strMeasure12=""
	@objc dynamic var strMeasure13=""
	@objc dynamic var strMeasure14=""
	@objc dynamic var strMeasure15=""
	@objc dynamic var strMeasure16=""
	@objc dynamic var strMeasure17=""
	@objc dynamic var strMeasure18=""
	@objc dynamic var strMeasure19=""
	@objc dynamic var strMeasure20=""
	@objc dynamic var strSource=""
	@objc dynamic var dateModified=""
	
	
	required init?(map: Map){

	}
	
	func mapping(map: Map) {
		
		idMeal <- map["idMeal"]
		strMeal <- map["strMeal"]
		strDrinkAlternate <- map["strDrinkAlternate"]
		strCategory <- map["strCategory"]
		strArea <- map["strArea"]
		strInstructions <- map["strInstructions"]
		strMealThumb <- map["strMealThumb"]
		strTags <- map["strTags"]
		strYoutube <- map["strYoutube"]
		strIngredient1 <- map["strIngredient1"]
		strIngredient2 <- map["strIngredient2"]
		strIngredient3 <- map["strIngredient3"]
		strIngredient4 <- map["strIngredient4"]
		strIngredient5 <- map["strIngredient5"]
		strIngredient6 <- map["strIngredient6"]
		strIngredient7 <- map["strIngredient7"]
		strIngredient8 <- map["strIngredient8"]
		strIngredient9 <- map["strIngredient9"]
		strIngredient10 <- map["strIngredient10"]
		strIngredient11 <- map["strIngredient11"]
		strIngredient12 <- map["strIngredient12"]
		strIngredient13 <- map["strIngredient13"]
		strIngredient14 <- map["strIngredient14"]
		strIngredient15 <- map["strIngredient15"]
		strIngredient16 <- map["strIngredient16"]
		strIngredient17 <- map["strIngredient17"]
		strIngredient18 <- map["strIngredient18"]
		strIngredient19 <- map["strIngredient19"]
		strIngredient20 <- map["strIngredient20"]
		strMeasure1 <- map["strMeasure1"]
		strMeasure2 <- map["strMeasure2"]
		strMeasure3 <- map["strMeasure3"]
		strMeasure4 <- map["strMeasure4"]
		strMeasure5 <- map["strMeasure5"]
		strMeasure6 <- map["strMeasure6"]
		strMeasure7 <- map["strMeasure7"]
		strMeasure8 <- map["strMeasure8"]
		strMeasure9 <- map["strMeasure9"]
		strMeasure10 <- map["strMeasure10"]
		strMeasure11 <- map["strMeasure11"]
		strMeasure12 <- map["strMeasure12"]
		strMeasure13 <- map["strMeasure13"]
		strMeasure14 <- map["strMeasure14"]
		strMeasure15 <- map["strMeasure15"]
		strMeasure16 <- map["strMeasure16"]
		strMeasure17 <- map["strMeasure17"]
		strMeasure18 <- map["strMeasure18"]
		strMeasure19 <- map["strMeasure19"]
		strMeasure20 <- map["strMeasure20"]
		strSource <- map["strSource"]
		dateModified <- map["dateModified"]
		}
	
	
	func getIngredients() -> String
	{
		var ingredients=""
		if strIngredient1 != ""
		{
			ingredients="Ingredient1: "+strIngredient1+" : \(strMeasure1)"+"\n"
		}
		
		if
			strIngredient2 != ""
		{
		ingredients=ingredients+"\nIngredient2: "+strIngredient2+" : \(strMeasure2)"+"\n"
		}
		if
		strIngredient3 != ""
		{
			ingredients=ingredients+"\nIngredient3: "+strIngredient3+" : \(strMeasure3)"+"\n"
		}
		if
		strIngredient4 != ""
		{
			ingredients=ingredients+"\nIngredient4: "+strIngredient4+" : \(strMeasure4)"+"\n"
		}
		if
		strIngredient5 != ""{
			ingredients=ingredients+"\nIngredient5: "+strIngredient5+" : \(strMeasure5)"+"\n"
		}
		if
		strIngredient6 != ""{
			ingredients=ingredients+"\nIngredient6: "+strIngredient6+" : \(strMeasure6)"+"\n"
		}
		if
		strIngredient7 != ""{
			ingredients=ingredients+"\nIngredient7: "+strIngredient7+" : \(strMeasure7)"+"\n"
		}
		if
		strIngredient8 != ""{
			ingredients=ingredients+"\nIngredient8: "+strIngredient8+" : \(strMeasure8)"+"\n"
		}
		if
		strIngredient9 != ""{
			ingredients=ingredients+"\nIngredient9: "+strIngredient9+" : \(strMeasure9)"+"\n"
		}
		if
		strIngredient10 != ""{
			ingredients=ingredients+"\nIngredient10: "+strIngredient10+" : \(strMeasure10)"+"\n"
		}
		if
		strIngredient11 != ""{
			ingredients=ingredients+"\nIngredient11: "+strIngredient11+" : \(strMeasure11)"+"\n"
		}
		if
		strIngredient12 != ""{
			ingredients=ingredients+"\nIngredient12: "+strIngredient12+" : \(strMeasure12)"+"\n"
		}
		if
		strIngredient13 != ""{
			ingredients=ingredients+"\nIngredient13: "+strIngredient13+" : \(strMeasure13)"+"\n"
		}
		if
		strIngredient14 != ""{
			ingredients=ingredients+"\nIngredient14: "+strIngredient14+" : \(strMeasure14)"+"\n"
		}
		
		if
		strIngredient15 != ""{
			ingredients=ingredients+"\nIngredient15: "+strIngredient15+" : \(strMeasure15)"+"\n"
		}
		
		if
		strIngredient16 != ""{
			ingredients=ingredients+"\nIngredient16: "+strIngredient16+" : \(strMeasure16)"+"\n"
		}
		if
		strIngredient17 != ""{
			ingredients=ingredients+"\nIngredient17: "+strIngredient17+" : \(strMeasure17)"+"\n"
		}
		if
		strIngredient18 != ""{
			ingredients=ingredients+"\nIngredient18: "+strIngredient18+" : \(strMeasure18)"+"\n"
		}
		if
		strIngredient19 != ""{
			ingredients=ingredients+"\nIngredient19: "+strIngredient19+" : \(strMeasure19)"+"\n"
		}
		if
		strIngredient20 != ""{
			ingredients=ingredients+"\nIngredient20: "+strIngredient20+" : \(strMeasure20)"+"\n"
		}
		
		return ingredients
	}
}



