//
//  TasksViewController.swift
//  Tasks
//
//  Created by Mixko on 16/6/2564 BE.
//

import UIKit

class TasksViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var task: String?
    var number: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
        guard let count = UserDefaults().value(forKey: "count") as? Int else { return }

        let newCount = count - 1

        guard let currentPosition = number else { return }
        UserDefaults().setValue(newCount, forKey: "count")
        UserDefaults().setValue(nil, forKey: "task_\(currentPosition)")
    
    }

}
