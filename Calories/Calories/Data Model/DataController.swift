//
//  DataController.swift
//  Calories
//
//  Created by viktor on 01.07.2022.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "FoodModel")

    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to laod data \(error.localizedDescription )")
            }
            
        }
    }

    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
             print("data saved!!!")
        } catch {
            print("we could not save the data..")
        }
    }
    func addFood(name: String, calories: Double, context: NSManagedObjectContext) {
        let food = Food(context: context)
        food.id = UUID()
        food.data = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
    func editFood(food: Food, name: String, calories: Double, context: NSManagedObjectContext) {
        food.data = Date ()
        food.name = name
        food.calories = calories
        
        save(context: context)
        
    }
}



















