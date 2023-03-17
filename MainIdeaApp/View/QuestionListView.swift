//
//  QuestionListView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/15.
//

import SwiftUI

struct QuestionListView: View {
    @StateObject private var viewModel = QuestionListViewModel()
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)

    var body: some View {
        ScrollViewReader { scrollProxy in
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<viewModel.questions.count, id: \.self) { index in
                        VStack {
                            QuestionView(viewModel: viewModel, viewId: index)

                            HStack {
                                Button(action: {
                                    if index == 0 {
                                        withAnimation {
                                            scrollProxy.scrollTo(1)
                                        } // withAnimation
                                    } else {
                                        withAnimation {
                                            scrollProxy.scrollTo(index - 1)
                                        } // withAnimation
                                    }
                                }, label: {
                                    Rectangle()
                                        .foregroundColor(.matureOrange)
                                        .frame(width: screenWidth * 0.38 ,height: 40)
                                        .cornerRadius(10)
                                        .overlay(
                                            RubyLabelRepresentable(
                                                attributedText: previousButtonText(for: index).createRuby(color: UIColor(.offWhite)),
                                                font: .systemFont(ofSize: 19),
                                                textColor: UIColor(.offWhite),
                                                textAlignment: .center
                                            )
                                        )
                                })
                                .padding()

                                Spacer()

                                Button(action: {
                                    if index == viewModel.questions.count - 1 {
                                        withAnimation {
                                            scrollProxy.scrollTo(0)
                                        } // withAnimation
                                    } else {
                                        withAnimation {
                                            scrollProxy.scrollTo(index + 1)
                                        } // withAnimation
                                    }
                                }, label: {
                                    Rectangle()
                                        .foregroundColor(.matureOrange)
                                        .frame(width: screenWidth * 0.38 ,height: 40)
                                        .cornerRadius(10)
                                        .overlay(
                                            RubyLabelRepresentable(
                                                attributedText: nextButtonText(for: index).createRuby(color: UIColor(.offWhite)),
                                                font: .systemFont(ofSize: 19),
                                                textColor: UIColor(.offWhite),
                                                textAlignment: .center
                                            )
                                        )
                                })
                                .opacity(index != 0 ? 1 : 0)
                                .padding()
                            } // HStack
                            Divider()
                        } // VStack
                        .id(index)
                    } // ForEach
                } //ScrollView
            } // VStack
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
        } // ScrolViewReader
    } // body

    private func previousButtonText(for index: Int) -> String {
        return index == 0 ? "｜次《つぎ》の｜問題《もんだい》へ" : "｜一《ひと》つ｜前《まえ》の｜問題《もんだい》へ"
    }

    private func nextButtonText(for index: Int) -> String {
        return index == viewModel.questions.count - 1 ? "｜最初《さいしょ》の｜問題《もんだい》へ" : "｜次《つぎ》の｜問題《もんだい》へ"
    }
}
