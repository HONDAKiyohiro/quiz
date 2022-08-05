//
//  Quiz.swift
//  quiz
//
//  Created by Kiyohiro Honda on 2022/08/05.
//

import UIKit

class Quiz {
    let text: String
    let correctAnswer: Bool
    let imageName: String

    init(text: String, correctAnswer: Bool, imageName: String) {
        self.text = text
        self.correctAnswer = correctAnswer
        self.imageName = imageName
    }
}
