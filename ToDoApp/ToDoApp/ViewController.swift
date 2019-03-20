//
//  ViewController.swift
//  ToDoApp
//
//  Created by carmen 1 on 20.03.19.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // referenz zu viewcontroller
        todoTableView.delegate = self
        // 
        todoTableView.dataSource = self
        
        
    }
    
    @IBOutlet weak var todoTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Inhalt"
        return cell
        
    }
    
}

