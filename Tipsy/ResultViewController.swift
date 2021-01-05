//
//  ResultViewController.swift
//  Tipsy
//
//  Created by jhontan on 5/4/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    var total:Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format:"%0.2f",total!)
        // Do any additional setup after loading the view.
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
