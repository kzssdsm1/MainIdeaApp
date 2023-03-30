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
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        VStack(spacing: 0) {
            Image(viewModel.questions[viewId].imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: screenHeight * 0.35)
                .padding()
            
            ForEach(viewModel.questions[viewId].choices, id: \.self) { item in
                Button(action: {
                    viewModel.addAnswer(id: viewId, answerString: item)
                }, label: {
                    if viewModel.userAnswers.contains(item) {
                        RubyLabelRepresentable(
                            attributedText: item.createRuby(color: UIColor(.yellow)),
                            font: UIFont(name: "Tanuki-Permanent-Marker", size: 25)!,
                            textColor: UIColor(.yellow),
                            textAlignment: .left
                        )
                        .opacity(0.8)
                        
                    } else {
                        RubyLabelRepresentable(
                            attributedText: item.createRuby(color: UIColor(.white)),
                            font: UIFont(name: "Tanuki-Permanent-Marker", size: 25)!,
                            textColor: UIColor(.offWhite),
                            textAlignment: .left
                        )
                        .opacity(0.8)
                    }
                })
                .padding(10)
            } // ForEach
        } // VStack
    } // body
}
