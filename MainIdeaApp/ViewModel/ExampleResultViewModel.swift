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
}
