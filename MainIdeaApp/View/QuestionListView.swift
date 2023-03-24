//
//  QuestionListView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/15.
//

import SwiftUI

struct QuestionListView: View {
    @StateObject private var viewModel = QuestionListViewModel()
    
    @State private var isPresentedResultView = false
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    
    var body: some View {
        ScrollViewReader { scrollProxy in
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<viewModel.questions.count, id: \.self) { index in
                        VStack {
                            QuestionView(viewModel: viewModel, viewId: index)
                            
                            HStack {
                                Spacer()
                                
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
                                    Image("wood_kanban5")
                                        .resizable()
                                        .frame(width: 180, height: 80)
                                        .overlay(
                                            RubyLabelRepresentable(
                                                attributedText: previousButtonText(for: index).createRuby(color: UIColor(.offWhite)),
                                                font: UIFont(name: "Tanuki-Permanent-Marker", size: 20)!,
                                                textColor: UIColor(.offWhite),
                                                textAlignment: .center
                                            )
                                            .opacity(0.8)
                                        )
                                })
                                .padding()
                                
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
                                    Image("wood_kanban5")
                                        .resizable()
                                        .frame(width: 160, height: 80)
                                        .overlay(
                                            RubyLabelRepresentable(
                                                attributedText: nextButtonText(for: index).createRuby(color: UIColor(.offWhite)),
                                                font: UIFont(name: "Tanuki-Permanent-Marker", size: 20)!,
                                                textColor: UIColor(.offWhite),
                                                textAlignment: .center
                                            )
                                            .opacity(0.8)
                                        )
                                })
                                .opacity(index != 0 ? 1 : 0)
                                .padding()
                                
                                Spacer()
                            } // HStack
                            Divider()
                                .frame(width: screenWidth - 20)
                                .background(Color.offWhite)
                        } // VStack
                        .id(index)
                    } // ForEach
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            isPresentedResultView = true
                        }, label: {
                            Rectangle()
                                .cornerRadius(20)
                                .foregroundColor(.matureOrange)
                                .frame(width: 200, height: 90)
                                .overlay(
                                    RubyLabelRepresentable(
                                        attributedText: "｜答《こた》え｜合《あ》わせをする".createRuby(color: UIColor(.offWhite)),
                                        font: UIFont(name: "Tanuki-Permanent-Marker", size: 20)!,
                                        textColor: UIColor(.offWhite),
                                        textAlignment: .center
                                    )
                                    .opacity(0.8)
                                )
                        })
                        .navigationDestination(isPresented: $isPresentedResultView) {
                            ResultView(viewModel: ResultViewModel(userAnswers: viewModel.userAnswers, questions: Array(viewModel.questions))) 
                        }
                        .disabled(viewModel.userAnswers.count < 5)
                        .opacity(viewModel.userAnswers.count < 5 ? 0.5 : 1)
                        
                        Spacer()
                    } // HStack
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
