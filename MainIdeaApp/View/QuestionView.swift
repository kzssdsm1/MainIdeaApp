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
            viewModel.questions[id].image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            ForEach(viewModel.questions[id].choices, id: \.self) { item in
                Button(action: {
                    
                }, label: {
                    RubyLabelRepresentable(
                        attributedText: item.createRuby(),
                        font: .systemFont(ofSize: 22),
                        textColor: .lightGray,
                        textAlignment: .left
                    )
                })
                .padding()
            } // ForEach
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
    }
}
