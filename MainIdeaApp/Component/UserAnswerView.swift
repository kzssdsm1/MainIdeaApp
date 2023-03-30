//
//  UserAnswerView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/30.
//

import SwiftUI

struct UserAnswerView: View {
    @ObservedObject var viewModel: ResultViewModel
    
    let viewId: Int
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    private let answerTextColor = UIColor(.offWhite)
    
    private var resultLabelText: String {
        return viewModel.userAnswers[viewId] == viewModel.questions[viewId].correctAnswer ? "｜正解《せいかい》！" : "｜不正解《ふせいかい》・・・"
    }
    private var resultLabelColor: Color {
        return viewModel.userAnswers[viewId] == viewModel.questions[viewId].correctAnswer ? .chalkBlue : .chalkPink
    }
    
    var body: some View {
        VStack(spacing: 0) {
            resultImage()
            
            rubyLabel("｜君《きみ》の｜回答《かいとう》：", fontSize: 22, textColor: answerTextColor, bottomPadding: 10)
            
            rubyLabel(viewModel.userAnswers[viewId], fontSize: 25, textColor: answerTextColor, bottomPadding: 30)
            
            rubyLabel("｜正解《せいかい》：", fontSize: 22, textColor: answerTextColor, bottomPadding: 10)
            
            rubyLabel(viewModel.questions[viewId].correctAnswer, fontSize: 25, textColor: answerTextColor, bottomPadding: 30)
            
            rubyLabel(resultLabelText, fontSize: 27, textColor: UIColor(resultLabelColor), textAlignment: .center, bottomPadding: 30)
        } // VStack
    } // body
    
    private func resultImage() -> some View {
        Image(viewModel.questions[viewId].imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: screenHeight * 0.35)
            .padding()
    }
    
    private func rubyLabel(_ text: String, fontSize: CGFloat, textColor: UIColor, textAlignment: NSTextAlignment = .left, bottomPadding: CGFloat) -> some View {
        RubyLabelRepresentable(
            attributedText: text.createRuby(color: textColor),
            font: .chalkFont(ofSize: fontSize),
            textColor: textColor,
            textAlignment: textAlignment
        )
        .opacity(0.8)
        .padding(.horizontal)
        .padding(.bottom, bottomPadding)
    }
}
