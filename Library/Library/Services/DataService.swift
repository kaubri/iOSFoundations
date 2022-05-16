//
//  DataService.swift
//  RecipeList
//
//  Created by Mikaila Smith on 5/1/22.
//

import Foundation

class DataService {
    
    // static keyword turns method into type method. Don't need to create an instance to use method
    static func getLocalData() -> [Book] {
        // Parse local JSON file
        let pathString = Bundle.main.path(forResource: "books", ofType: "json")
        
        // Get a URL path to the JSON file
        // Check if pathString is not nil, otherwise...
        // In this case, if pathString is nil, then we return an empty Recipe array.
        guard pathString != nil else {
            return [Book]()
        }
        
        // Create an URL object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        do {
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSOn decoder
            let decoder = JSONDecoder()
            
            do {
                let bookData = try decoder.decode([Book].self, from: data)

                // Return the recipes
                return bookData
            }
            catch {
                print(error)
            }
        }
        catch {
            // Error with getting data
            print(error)
        }
        
        return [Book]()
    }
}
