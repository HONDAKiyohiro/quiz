//
//  ResultViewController.swift
//  quiz
//
//  Created by Kiyohiro Honda on 2022/10/19.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var label: UILabel!
    
    var nameText: String = ""
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.label.text = "\(self.nameText)さん　あなたのスコアは\(self.score)です。"
        var text = ""
        switch self.score {
        case 0...2:
            text = "あなたのスコアは０店から２店です"
        case 3,4:
            text = "あなたのスコアは3店または４店です"
        case 5:
            text = "５店です"
        default:
            break
        }
        self.textView.text = text
        
    }
    
    @IBAction func pushResultButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
