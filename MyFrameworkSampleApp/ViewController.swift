//
//  ViewController.swift
//
//  Created by Geoffrey C. Begen on 12/22/15.
//
import UIKit

import MyFramework

class ViewController: UIViewController {

    @IBOutlet var myView: MyView!

    override func viewDidLoad() {
        super.viewDidLoad()

        myView.pathColor = UIColor.greenColor()
    }
}
