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
    
    private var resultLabelText: String {
        return viewModel.userAnswers[viewId] == viewModel.questions[viewId].correctAnswer ? "｜正解《せいかい》！" : "｜不正解《ふせいかい》・・・"
    }
    private var resultLabelColor: Color {
        return viewModel.userAnswers[viewId] == viewModel.questions[viewId].correctAnswer ? .chalkBlue : .chalkPink
    }
    
    var body: some View {
        VStack(spacing: 0) {
            resultImage()
            
            rubyLabel("｜君《きみ》の｜回答《かいとう》：", font: "Tanuki-Permanent-Marker", fontSize: 22, textColor: UIColor(.offWhite), bottomPadding: 10)
            
            rubyLabel(viewModel.userAnswers[viewId], font: "Tanuki-Permanent-Marker", fontSize: 25, textColor: UIColor(.offWhite), bottomPadding: 30)
            
            rubyLabel("｜正解《せいかい》：", font: "Tanuki-Permanent-Marker", fontSize: 22, textColor: UIColor(.offWhite), bottomPadding: 10)
            
            rubyLabel(viewModel.questions[viewId].correctAnswer, font: "Tanuki-Permanent-Marker", fontSize: 25, textColor: UIColor(.offWhite), bottomPadding: 30)
            
            resultLabel()
        } // VStack
    } // body
    
    private func resultImage() -> some View {
        Image(viewModel.questions[viewId].imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: screenHeight * 0.35)
            .padding()
    }
    
    private func resultLabel() -> some View {
        RubyLabelRepresentable(
            attributedText: resultLabelText.createRuby(color: UIColor(resultLabelColor)),
            font: UIFont(name: "Tanuki-Permanent-Marker", size: 27)!,
            textColor: UIColor(resultLabelColor),
            textAlignment: .center
        )
        .opacity(0.8)
        .padding(.horizontal)
        .padding(.bottom, 30)
    }
    
    private func rubyLabel(_ text: String, font: String, fontSize: CGFloat, textColor: UIColor, textAlignment: NSTextAlignment = .left, bottomPadding: CGFloat) -> some View {
        RubyLabelRepresentable(
            attributedText: text.createRuby(color: textColor),
            font: UIFont(name: font, size: fontSize)!,
            textColor: textColor,
            textAlignment: textAlignment
        )
        .opacity(0.8)
        .padding(.horizontal)
        .padding(.bottom, bottomPadding)
    }
}
