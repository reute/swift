//
//  AddToDoViewController.swift
//  ToDoApp
//
//  Created by carmen 1 on 20.03.19.
//

import UIKit

class AddToDoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var todoTextField: UITextField!
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        CoreDataManager.createObj(name: todoTextField.text!)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
