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
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        VStack(spacing: 0) {
            Image(viewModel.questions[viewId].imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: screenHeight * 0.45)
                .padding()
            
            ForEach(viewModel.questions[viewId].choices, id: \.self) { item in
                Button(action: {
                    viewModel.addAnswer(id: viewId, answerString: item)
                }, label: {
                    RubyLabelRepresentable(
                        attributedText: item.createRuby(color: UIColor(.offWhite)),
                        font: .systemFont(ofSize: 21),
                        textColor: UIColor(.offWhite),
                        textAlignment: .left
                    )
                })
                .padding(10)
            } // ForEach
        } // VStack
    } // body
}
