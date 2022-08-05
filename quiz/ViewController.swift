//
//  ViewController.swift
//  quiz
//
//  Created by Kiyohiro Honda on 2022/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.label.text = "hello!"
        
        let q = Quiz(text: "問題文", correctAnswer: true, imageName: "neko")
        print(q.text)
        print(q.correctAnswer)
        print(q.imageName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let quiqViewController = segue.destination as? QuizViewController{
            if let text = self.nameTextField.text {
                quiqViewController.nameText = text
            }
        }
    }

    @IBAction func pressButton(_ sender: Any) {
        self.label.text = "ボタンを押しました"
    }
    
}

