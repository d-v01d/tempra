//
//  ViewController.swift
//  Trempra
//
//  Created by Jason Behnke on 5/27/17.
//  Copyright © 2017 Jason Behnke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: Conversion counter
    var count = 0
    // conversion object/label link
    @IBOutlet weak var conversionNumLabel: UILabel!
    
    //MARK: tempEntry
    @IBOutlet weak var tempEntry: UITextField!
    
    //MARK: resultLabel
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: convertClicked
    @IBAction func convertClicked(_ sender: UIButton) {
        print("Convert clicked ")
        if let result = tempEntry.text {
            if (result == "") {
                return
            }
            else {
                if let num = Double(result) {
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    updateCountByOne()
                }
            }
        }
    }
    
    func updateCountByOne () {
        count += 1
        conversionNumLabel.text = String(count) + " conversions"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

