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
        switch sender.state {
        case .began, .changed:
            self.transeformQuizCard(gesture: sender)
        case .ended:
            break
        default:
            break
        }

    }
    
    func transeformQuizCard(gesture: UIPanGestureRecognizer){
        let translation = gesture.translation(in: self.quizCard)
        let translationTransForm = CGAffineTransform(translationX: translation.x, y: translation.y)
        let translationPercent = translation.x/UIScreen.main.bounds.width/2
        let rotationAngle = CGFloat.pi / 3 * translationPercent
        let rotationTranform = CGAffineTransform(rotationAngle: rotationAngle)
        let transform = translationTransForm.concatenating(rotationTranform)
        self.quizCard.transform = transform
        
        if translation.x > 0{
            self.quizCard.style = .right
        }else{
            self.quizCard.style = .wrong
        }
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
