//
//  Meal.swift
//  FoodTracker
//
//  Created by tayutaedomo on 2019/08/20.
//  Copyright © 2019 tayutaedomo.net. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int

    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialization should fail if there is no name or if the rating is negative.
//        if name.isEmpty || rating < 0 {
//            return nil
//        }

        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }

        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
