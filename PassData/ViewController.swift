//
//  ViewController.swift
//  PassData
//
//  Created by Akhila Kishore on 11/8/16.
//  Copyright © 2016 com.akhilakishore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC: SecondViewController = segue.destination as! SecondViewController
        let myInt = Float(TextField.text!)
        let Ctemp : Float
        Ctemp = (myInt! - 32.0) * 0.5556
        TextField.text = String(Ctemp)
        secondVC.LabelText = TextField.text!
    }
}

