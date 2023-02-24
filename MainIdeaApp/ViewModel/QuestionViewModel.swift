//
//  QuestionViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/02/24.
//

import Foundation

final class QuestionViewModel: ObservableObject {
    var questions = QuestionContext.questions.shuffled().prefix(5)
    var correctAnswers = 0
    
    func checkAnswer(answer: String, index: Int) {
        if answer == questions[index].answer {
            questions[index].isCorrect = true
        }
    }
}
