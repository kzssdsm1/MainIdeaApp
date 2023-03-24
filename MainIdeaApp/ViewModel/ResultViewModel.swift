//
//  ResultViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/24.
//

import Foundation

final class ResultViewModel: ObservableObject {
    let userAnswers: [String]
    
    var questions: [Question]
    
    init(userAnswers: [String], questions: [Question]) {
        self.userAnswers = userAnswers
        self.questions = questions
    }
}
