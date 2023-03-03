//
//  QuestionView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/02/24.
//

import SwiftUI

struct QuestionView: View {
    @StateObject private var viewModel = QuestionViewModel()
    @State private var viewId = 0
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        VStack(spacing: 0) {
            Image(viewModel.questions[viewId].imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: screenHeight * 0.4)
                .padding()
            
            ForEach(0..<viewModel.questions[viewId].choices.count, id: \.self) { index in
                Button(action: {
                    viewModel.addUserAnswer(id: viewId, index: index)
                }, label: {
                    RubyLabelRepresentable(
                        attributedText: viewModel.questions[viewId].choices[index].createRuby(),
                        font: .systemFont(ofSize: 22),
                        textColor: .lightGray,
                        textAlignment: .left)
                })
                .padding()
            } // ForEach
            
            HStack {
                Button(action: {
                    viewId -= 1
                    print(viewId)
                }, label: {
                    RubyLabelRepresentable(
                        attributedText: "｜前《まえ》の｜問題《もんだい》へ".createRuby(),
                        font: .systemFont(ofSize: 22),
                        textColor: .lightGray,
                        textAlignment: .left)
                })
                .opacity(viewId == 0 ? 0 : 1)
                
                Spacer(minLength: 0)
                
                if viewId == 4 {
                    Button(action: {
                        
                    }, label: {
                        
                    })
                } else {
                    Button(action: {
                        viewId += 1
                        print(viewId)
                    }, label: {
                        RubyLabelRepresentable(
                            attributedText: "｜次《つぎ》の｜問題《もんだい》へ".createRuby(),
                            font: .systemFont(ofSize: 22),
                            textColor: .lightGray,
                            textAlignment: .left)
                    })
                }
            } // HStack
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
    } // body
}
