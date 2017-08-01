//
//  ViewController.swift
//  Grok101
//
//  Created by Alexander Ruduk on 25.07.17.
//  Copyright © 2017 Alexander Ruduk. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Todo.todoByID(id: 1) { result in
            if let error = result.error {
                print("Error: calling POST on /todos/")
                print(error)
                return
            }
            guard let todo = result.value else {
                print("Error: Calling POST on /todos/ - result is nil")
                return
            }
            
            print(todo.descriptionTodo)
            print(todo.title)
        }
        
        guard let newTodo = Todo(title: "My first todo",
                                 id: nil,
                                 userId: 1,
                                 completedStatus: true) else {
                                    print("Error: newTodo isn't a Todo")
                                    return
        }
        newTodo.save {result in
            if let error = result.error {
                print("Error: calling POST on /todos/")
                print(error)
                return
            }
            guard let todo = result.value else {
                print("Error: Calling POST on /todos/ - result is nil")
                return
            }
            
            print(todo.descriptionTodo)
            print(todo.title)

        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

