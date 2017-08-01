//
//  Todo.swift
//  Grok101
//
//  Created by Alexander Ruduk on 28.07.17.
//  Copyright © 2017 Alexander Ruduk. All rights reserved.
//

import UIKit
import Alamofire

class Todo: NSObject {
    var title: String
    var id: Int?
    var userId: Int
    var completed: Bool
    
    required init?(title: String, id: Int?, userId: Int, completedStatus: Bool) {
        self.title = title
        self.id = id
        self.userId = userId
        self.completed = completedStatus
    }
    
    func descriptionTodo() -> String {
        return "ID: \(self.id)" +
            "User ID: \(self.userId)" +
            "Title: \(self.title)" +
            "Completed: \(self.completed)"
    }
}
