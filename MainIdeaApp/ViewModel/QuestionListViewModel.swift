//
//  QuestionListViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/15.
//

import Foundation
import UIKit

final class QuestionListViewModel: ObservableObject {
    @Published var userAnswers = [String]()
    @Published var isNavigationDisabled = true
    
    let questions = QuestionContext.questions.shuffled().prefix(5)
    
    private var unsortedUserAnswers = [Int: String]()
    
    func detectDeviceModelByScreenResolution() -> DeviceModel {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return .iPad
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return .iPhone10
            default:
                return .iPhone8
            }
        }
    }
    
    func addAnswer(id: Int, answerString: String) {
        unsortedUserAnswers[id] = answerString
        
        userAnswers = []
        
        for item in unsortedUserAnswers.sorted(by: { $0.key < $1.key }) {
            userAnswers.append(item.value)
        }
        
        if userAnswers.count < 5 {
            isNavigationDisabled = true
        } else {
            isNavigationDisabled = false
        }
    }
}
