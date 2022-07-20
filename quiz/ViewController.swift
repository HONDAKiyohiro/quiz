//
//  ViewController.swift
//  quiz
//
//  Created by Kiyohiro Honda on 2022/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.label.text = "hello!"
    }

    @IBAction func pressButton(_ sender: Any) {
        self.label.text = "ボタンを押しました"
    }
    
}

