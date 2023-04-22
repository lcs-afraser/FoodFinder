//
//  SearchView.swift
//  FoodFinder
//
//  Created by Alistair Fraser on 2023-04-22.
//

import SwiftUI

struct SearchView: View {
    
    //MARK: Stored properties
    //Holds the list of foods returned by our search
    @State var foundFoods: [Food] = []
    
    //MARK: Computed properties
    var body: some View {
        List(foundFoods, id: \.idMeal) { currentFood in
            VStack {
                
                Image(currentFood.strMealThumb)
                    
                Text(currentFood.strMeal)
                    .bold()
            }
        }
        .task {
            //When the view appears, fetch search results for "Arrabiata"
            foundFoods = await NetworkService.fetch()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
