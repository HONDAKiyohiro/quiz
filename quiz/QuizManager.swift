//
//  QuizManager.swift
//  quiz
//
//  Created by Kiyohiro Honda on 2022/08/08.
//

import UIKit

class QuizManager{
    var quizzes: [Quiz]
    var currentIndex: Int
    var score: Int
    
    enum Status {
        case inAnswer
        case done
    }
    var status: Status
    
    init(){
        quizzes = []
        quizzes.append(Quiz(text: "人間を超でっかい猫だと思っている？", correctAnswer: true, imageName: "cat"))
        quizzes.append(Quiz(text: "犬は食べ物の美味しさを味よりも臭で判断している？", correctAnswer: true, imageName: "dog"))
        quizzes.append(Quiz(text: "トラのしましま模様は皮膚までつながっていない？", correctAnswer: false, imageName: "tiger"))
        quizzes.append(Quiz(text: "クマは走るときに全部の足がバラバラに動いている？", correctAnswer: true, imageName: "bear"))
        quizzes.append(Quiz(text: "パンダの一番の好物は笹である？", correctAnswer: false, imageName: "panda"))
        
        currentIndex = 0
        score = 0
        status = .inAnswer
    }

    var currentQuiz: Quiz {
        get {
            return self.quizzes[currentIndex]
        }
    }
    
    func answerQuiz(answer: Bool) {
        if(self.currentQuiz.correctAnswer == answer){
            score += 1
        }
    }
    
    func nextQuiz() {
        if (currentIndex < quizzes.count - 1) {
            currentIndex += 1
        }else{
            status = .done
        }
    }
}
