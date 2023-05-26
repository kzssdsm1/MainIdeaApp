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
    private var resultImageSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return screenHeight * 0.35
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return screenHeight * 0.35
            default:
                return screenHeight * 0.3
            }
        }
    }
    private var answerfontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 45
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 25
            default:
                return 22
            }
        }
    }
    private var answerSectionfontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 38
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 22
            default:
                return 20
            }
        }
    }
    private var answerCorrectnessfontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 52
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 27
            default:
                return 23
            }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            resultImage()
            
            rubyLabel("｜君《きみ》の｜回答《かいとう》：", fontSize: answerSectionfontSize, textColor: answerTextColor, bottomPadding: 10)
            
            rubyLabel(viewModel.userAnswers[viewId], fontSize: answerfontSize, textColor: answerTextColor, bottomPadding: 30)
            
            rubyLabel("｜正解《せいかい》：", fontSize: answerSectionfontSize, textColor: UIColor(.chalkBlue), bottomPadding: 10)
            
            rubyLabel(viewModel.questions[viewId].correctAnswer, fontSize: answerfontSize, textColor: UIColor(.chalkBlue), bottomPadding: 20)
            
            rubyLabel(resultLabelText, fontSize: answerCorrectnessfontSize, textColor: UIColor(resultLabelColor), textAlignment: .center, bottomPadding: 5)
        } // VStack
    } // body
    
    private func resultImage() -> some View {
        Image(viewModel.questions[viewId].imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: resultImageSize)
            .padding([.horizontal, .bottom])
            .padding(.top, 15)
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
