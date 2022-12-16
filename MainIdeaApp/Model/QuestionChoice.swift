//
//  QuestionChoice.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/12/09.
//

import Foundation

struct QuestionChoice: Identifiable {
    let id = UUID()
    let answer: String
    let choices: [String]
    var isCorrect = false
}
