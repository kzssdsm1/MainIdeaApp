//
//  QuestionListViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/15.
//

import Foundation

final class QuestionListViewModel: ObservableObject {
    @Published var userAnswers = [String]()
    let questions = QuestionContext.questions.shuffled().prefix(5)
    
    private var unsortedUserAnswers = [Int: String]()
    
    func addAnswer(id: Int, answerString: String) {
        unsortedUserAnswers[id] = answerString
        
        userAnswers = []
        
        for item in unsortedUserAnswers.sorted(by: { $0.key < $1.key }) {
            userAnswers.append(item.value)
        }
    }
}
