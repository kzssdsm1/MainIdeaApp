//
//  ResultViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/24.
//

import UIKit

final class ResultViewModel: ObservableObject {
    @Published var displayedUserScore = 0
    @Published var isShowingResultImage = false
    
    let userAnswers: [String]
    let questions: [Question]
    
    private var userScore: Int {
        var score = 0
        for i in 0..<userAnswers.count {
            if userAnswers[i] == questions[i].correctAnswer {
                score += 1
            }
        }
        return score
    }
    
    init(userAnswers: [String], questions: [Question]) {
        self.userAnswers = userAnswers
        self.questions = questions
    }
    
    private func presentResultImageWithAnimation() {
        UIView.animate(withDuration: 1.2) {
            self.isShowingResultImage = true
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
        let duration = 1.2
        let interval = 0.3
        
        displayedUserScore = (0...1 ~= userScore) ? 5 : 0
        
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { timer in
                if (0...1 ~= self.userScore) ? (self.displayedUserScore > self.userScore) : (self.displayedUserScore < self.userScore) {
                    self.displayedUserScore = (0...1 ~= self.userScore) ? self.displayedUserScore - 1 : self.displayedUserScore + 1
                } else {
                    timer.invalidate()
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + ((0...1 ~= self.userScore) ? 0.8 : 0.6)) {
                        self.presentResultImageWithAnimation()
                    }
                }
            }
        }
    }
}
