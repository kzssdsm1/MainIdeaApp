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
            Image(viewModel.questions[viewId].imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: screenHeight * 0.35)
                .padding()
            
            RubyLabelRepresentable(
                attributedText: "｜君《きみ》の｜回答《かいとう》：".createRuby(color: UIColor(.offWhite)),
                font: UIFont(name: "Tanuki-Permanent-Marker", size: 22)!,
                textColor: UIColor(.offWhite),
                textAlignment: .left
            )
            .opacity(0.8)
            .padding(.horizontal)
            .padding(.bottom, 10)
            
            RubyLabelRepresentable(
                attributedText: viewModel.userAnswers[viewId].createRuby(color: UIColor(.offWhite)),
                font: UIFont(name: "Tanuki-Permanent-Marker", size: 25)!,
                textColor: UIColor(.offWhite),
                textAlignment: .left
            )
            .opacity(0.8)
            .padding(.horizontal)
            .padding(.bottom, 30)
            
            RubyLabelRepresentable(
                attributedText: "｜正解《せいかい》：".createRuby(color: UIColor(.offWhite)),
                font: UIFont(name: "Tanuki-Permanent-Marker", size: 22)!,
                textColor: UIColor(.offWhite),
                textAlignment: .left
            )
            .opacity(0.8)
            .padding(.horizontal)
            .padding(.bottom, 10)
            
            RubyLabelRepresentable(
                attributedText: viewModel.questions[viewId].correctAnswer.createRuby(color: UIColor(.offWhite)),
                font: UIFont(name: "Tanuki-Permanent-Marker", size: 25)!,
                textColor: UIColor(.offWhite),
                textAlignment: .left
            )
            .opacity(0.8)
            .padding(.horizontal)
            .padding(.bottom, 30)
            
            resultLabel()
        } // VStack
    } // body
    
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
}
