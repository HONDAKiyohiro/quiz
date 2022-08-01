//
//  QuizViewController.swift
//  quiz
//
//  Created by Kiyohiro Honda on 2022/07/26.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var nameText: String = ""
    
    @IBOutlet weak var quizCard: QuizCard!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.quizCard.style = .initial
        let panGestureRcognizer = UIPanGestureRecognizer()
        panGestureRcognizer.addTarget(self, action: #selector(dragQuizCard(_:)))
        self.quizCard.addGestureRecognizer(panGestureRcognizer)
        
    }
    
    @objc func dragQuizCard(_ sender: UIPanGestureRecognizer){
        print("ドラッグしました")

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
