//
//  QuestionViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/02/24.
//

import Foundation

final class QuestionViewModel: ObservableObject {
    var questions = QuestionContext.questions.shuffled().prefix(5)
    var numCorrectAnswers = 0
    var userAnswers = [Int]()
    
    func addUserAnswer(id: Int, index: Int) {
        let removeIndex = id + 1
        
        if userAnswers.count >= removeIndex {
            userAnswers.insert(index, at: id)
            userAnswers.remove(at: removeIndex)
        } else {
            userAnswers.append(index)
        }
        
        print(userAnswers)
    }
}
