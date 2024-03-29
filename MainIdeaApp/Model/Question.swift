//
//  Question.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/12/09.
//

import Foundation

struct Question: Equatable, Hashable {
    let correctAnswer: String
    let choices: [String]
    let imageName: String
}
