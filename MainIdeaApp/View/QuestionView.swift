//
//  QuestionView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/02/24.
//

import SwiftUI

struct QuestionView: View {
    @StateObject private var viewModel = QuestionViewModel()
    
    var id: Int
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        VStack(spacing: 0) {
            Image(viewModel.questions[id].imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            ForEach(0..<viewModel.questions[id].choices.count, id: \.self) { index in
                Button(action: {
                    viewModel.addUserAnswer(id: id, index: index)
                }, label: {
                    RubyLabelRepresentable(
                        attributedText: viewModel.questions[id].choices[index].createRuby(),
                        font: .systemFont(ofSize: 22),
                        textColor: .lightGray,
                        textAlignment: .left)
                })
                .padding()
            } // ForEach
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
    } // body
}
