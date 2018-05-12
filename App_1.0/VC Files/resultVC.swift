//
//  resultVC.swift
//  App_1.0
//
//  Created by Sabbir Ahmed on 5/11/18.
//  Copyright © 2018 Sabbir  Ahmed. All rights reserved.
//

import UIKit

class resultVC: UIViewController {

    var CT1 = 0.0
    var CT2 = 0.0
    var CT3 = 0.0
    var CT4 = 0.0
    var sum = 0.0
    
    
    @IBOutlet weak var departmentName: UILabel!
    @IBOutlet weak var ct1: UITextField!
    @IBOutlet weak var ct2: UITextField!
    @IBOutlet weak var ct3: UITextField!
    @IBOutlet weak var ct4: UITextField!
    @IBOutlet weak var totalMarks: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backButton(_ sender: Any) {
       // dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
      //  delegate?.ad
        
    }
    
    @IBAction func doneButton(_ sender: Any) {
    }
    
    
    
    
    
    
    @IBAction func createResult(_ sender: Any) {
        
        
        
        totalMarks.text = "\(createResult())"
        
    }
    
    func createResult() -> Double {
        CT1 = Double(ct1.text!)!
        CT2 = Double(ct2.text!)!
        CT3 = Double(ct3.text!)!
        CT4 = Double(ct4.text!)!
        
        
        sum =   (CT1 + CT2 + CT3 + CT4) / 4.0
        
        
        
        return sum
        
    }
    
    
    
    

}
