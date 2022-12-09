//
//  Question.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/12/09.
//

import Foundation
import SwiftUI

struct Question: Identifiable {
    let id = UUID()
    let image: Image
    let quiestions: [QuestionChoice]
    let questionNumber: Int
}
