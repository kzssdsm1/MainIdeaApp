//
//  Question.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/12/09.
//

import Foundation
import SwiftUI

struct Question {
    let correctAnswerIndex: Int
    let correctAnswerText: String
    let choices: [String]
    let imageName: String
}
