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
    let colorProvider = BackgroundColorProvider()

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
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
        
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }

}
