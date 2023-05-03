//
//  DescriptionViewModel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/21.
//

import Foundation

final class DescriptionViewModel: ObservableObject {
    @Published var userAnswer = ""
    
    let question = QuestionContext.questions.first
}
