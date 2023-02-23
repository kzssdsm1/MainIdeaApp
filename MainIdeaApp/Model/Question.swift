//
//  Question.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/12/09.
//

import Foundation
import SwiftUI

struct Question {
    let answer: String
    let answerWithRuby: String
    let choices: [String]
    let image: Image
    var isCorrect = false
}
