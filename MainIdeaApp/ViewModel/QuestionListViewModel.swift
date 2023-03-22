//
//  QuestionListViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/15.
//

import Foundation

final class QuestionListViewModel: ObservableObject {
    @Published var questions = QuestionContext.questions.shuffled().prefix(5)
    @Published var userAnswers = [String]()
    
    func addAnswer(id: Int, answerString: String) {
        let arrayCount = id + 1
        
            if userAnswers.count < arrayCount {
            userAnswers.append(answerString)
        } else {
            userAnswers.remove(at: id)
            userAnswers.insert(answerString, at: id)
        }
    }
}
