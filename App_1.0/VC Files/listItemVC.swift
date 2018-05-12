//
//  listItemVC.swift
//  App_1.0
//
//  Created by Sabbir Ahmed on 5/12/18.
//  Copyright © 2018 Sabbir  Ahmed. All rights reserved.
//

import UIKit

class listItemVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

// Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        let txt = "Add Item"
        
       // let actionSave = UIAlertAction(title: "Save", style: .default , handler: nil)
        
         let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let controller = UIAlertController(title: "Items", message: txt, preferredStyle: .alert)
        
        controller.addAction(action)
        present(controller, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    
    
    
  
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        
       dismiss(animated: true, completion: nil)
       //navigationController?.popViewController(animated: true)
        
    }
    

}














