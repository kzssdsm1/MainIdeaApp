//
//  QuestionView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/15.
//

import SwiftUI

struct QuestionView: View {
    @ObservedObject var viewModel: QuestionListViewModel
    
    let viewId: Int
    let proxy: ScrollViewProxy
    
    private let imageHeight = CGFloat(UIScreen.main.bounds.height) * 0.4
    
    private var rubyFontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return 40
        } else {
            return 25
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Image(viewModel.questions[viewId].imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: imageHeight)
                .padding()
            
            ForEach(viewModel.questions[viewId].choices, id: \.self) { item in
                Button(action: {
                    viewModel.addAnswer(id: viewId, answerString: item)
                    
                    if viewModel.userAnswers.count >= 5 {
                        withAnimation {
                            proxy.scrollTo(5)
                        } // withAnimation
                    }
                }, label: {
                    if viewModel.userAnswers.contains(item) {
                        rubyLabel(item, textColor: UIColor(.yellow))
                    } else {
                        rubyLabel(item)
                    }
                })
                .padding(.top)
            } // ForEach
        } // VStack
    } // body
    
    private func rubyLabel(_ text: String, textColor: UIColor = UIColor(.offWhite), textAlignment: NSTextAlignment = .left) -> some View {
        RubyLabelRepresentable(
            attributedText: text.createRuby(color: textColor),
            font: .chalkFont(ofSize: rubyFontSize),
            textColor: textColor,
            textAlignment: textAlignment
        )
        .opacity(0.8)
    }
}
