//
//  ViewRoute.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/05.
//

import Foundation

enum ViewRoute: Equatable, Hashable {
    case questions
    case result(userAnswers: [String], questions: [Question])
    case description
    case exampleResult(userAnswer: String, question: Question)
}

extension ViewRoute: Identifiable {
    var id: Self { self }
}
