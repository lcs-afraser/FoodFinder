//
//  SearchResult.swift
//  FoodFinder
//
//  Created by Alistair Fraser on 2023-04-22.
//

import Foundation

struct SearchResult: Codable {
    
    let resultCount: Int
    let results: [Food]
    
}
