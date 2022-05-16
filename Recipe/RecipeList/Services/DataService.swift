//
//  DataService.swift
//  RecipeList
//
//  Created by Mikaila Smith on 5/1/22.
//

import Foundation

class DataService {
    
    // static keyword turns method into type method. Don't need to create an instance to use method
    static func getLocalData() -> [Recipe] {
        // Parse local JSON file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Get a URL path to the JSON file
        // Check if pathString is not nil, otherwise...
        // In this case, if pathString is nil, then we return an empty Recipe array.
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create an URL object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        do {
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSOn decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                    
                    // Add unique IDs to recipe ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                // Return the recipes
                return recipeData
            }
            catch {
                print(error)
            }
        }
        catch {
            // Error with getting data
            print(error)
        }
        
        return [Recipe]()
    }
}
