//
//  DataService.swift
//  Quotes
//
//  Created by Mikaila Smith on 5/2/22.
//

import Foundation

class DataService {
    
    // static keyword turns method into type method. Don't need to create an instance to use method
    static func getLocalData() -> [Quote] {
        // Parse local JSON file
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        // Get a URL path to the JSON file
        // Check if pathString is not nil, otherwise...
        // In this case, if pathString is nil, then we return an empty Recipe array.
        guard pathString != nil else {
            return [Quote]()
        }
        
        // Create an URL object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        do {
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSOn decoder
            let decoder = JSONDecoder()
            
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                // Add the unique IDs
                for q in quoteData {
                    q.id = UUID()
                }
                
                // Return the recipes
                return quoteData
            }
            catch {
                print(error)
            }
        }
        catch {
            // Error with getting data
            print(error)
        }
        
        return [Quote]()
    }
}
