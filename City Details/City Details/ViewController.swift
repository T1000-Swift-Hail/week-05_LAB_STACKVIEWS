//
//  ViewController.swift
//  City Details
//
//  Created by طلال عبيدالله دعيع القلادي on 02/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Share1: UIButton!
    @IBOutlet weak var learnMore: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        learnMore.layer.cornerRadius = 12
        Share1.layer.cornerRadius = 12
        
    }


}

