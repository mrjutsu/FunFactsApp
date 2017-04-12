//
//  ViewController.swift
//  FunFacts
//
//  Created by David Rosillo on 3/04/17.
//  Copyright © 2017 David Rosillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let factProvider = FactProvider()

    @IBOutlet weak var funFactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
    }

}
