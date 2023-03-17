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
            
            ForEach(0..<viewModel.questions[viewId].choices.count, id: \.self) { index in
                Button(action: {
                    print("test")
                }, label: {
                    RubyLabelRepresentable(
                        attributedText: viewModel.questions[viewId].choices[index].createRuby(color: UIColor(.offWhite)),
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
