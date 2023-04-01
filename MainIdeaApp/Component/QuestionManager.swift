//
//  QuestionManager.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/02.
//

import Foundation

final class QuestionManager {
    static let shared = QuestionManager()
    
    private var questions = [Question]()
    private var userAnswers = [String]()
    
    private init() {}
    
    func accessorForQuestions() -> [Question] {
        return questions
    }
    
    func accessorForUserAnswers() -> [String] {
        return userAnswers
    }
    
    func setterForProperties(questions: [Question], userAnswers: [String]) {
        self.questions = questions
        self.userAnswers = userAnswers
    }
    
    func removeToAll() {
        questions = []
        userAnswers = []
    }
}
