//
//  ResultViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/24.
//

import Foundation

final class ResultViewModel: ObservableObject {
    @Published var appearUserScore = 0
    
    let userAnswers: [String]
    let questions: [Question]
    
    private var userScore = 0
    
    init(userAnswers: [String], questions: [Question]) {
        self.userAnswers = userAnswers
        self.questions = questions
        
        scoreAnswers()
    }
    
    private func scoreAnswers() {
        guard userAnswers.count == questions.count else {
            fatalError("userAnswersのcountとquestionsのcountが一致しません")
        }
        
        for i in 0..<userAnswers.count {
            if userAnswers[i] == questions[i].correctAnswer {
                userScore += 1
            }
        }
    }
    
    func getImageNameForScore() -> String {
        switch userScore {
        case 5:
            return "成績三段階１"
        case 2...4:
            return "成績三段階２"
        case 0...1:
            return "成績三段階３"
        default:
            return "成績三段階１"
        }
    }
    
    func presentScoreWithAnimation() {
        if case 0...1 = userScore {
            appearUserScore = 5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
                    if self.appearUserScore != self.userScore {
                        self.appearUserScore -= 1
                    } else {
                        timer.invalidate()
                    }
                }
            }
        } else {
            appearUserScore = 0
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
                    if self.appearUserScore != self.userScore {
                        self.appearUserScore += 1
                    } else {
                        timer.invalidate()
                    }
                }
            }
        }
    }
}
