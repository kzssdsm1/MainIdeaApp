//
//  ExampleResultViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/21.
//

import Foundation

final class ExampleResultViewModel: ObservableObject {
    let userAnswer: String
    let question: Question
    
    init(userAnswer: String, question: Question) {
        self.userAnswer = userAnswer
        self.question = question
    }
    
    func getImageNameForScore() -> String {
        if question.correctAnswer == userAnswer {
            return "成績三段階１"
        } else {
            return "成績三段階３"
        }
    }
}
