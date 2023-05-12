//
//  QuestionListView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/15.
//

import SwiftUI

struct QuestionListView: View {
    @EnvironmentObject private var router: Router
    
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
                            navigationToResult()
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
                        .disabled(viewModel.userAnswers.count < 5)
                        .opacity(viewModel.userAnswers.count < 5 ? 0.5 : 1)
                        
                        Spacer()
                    } // HStack
                } //ScrollView
            } // VStack
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        router.backToHome()
                    }, label: {
                        HStack {
                            Image(systemName: "arrowshape.turn.up.left.fill")
                                .foregroundColor(.blue)
                            
                            Text("タイトルへ")
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        } // HStack
                    })
                }
            } // toolbar
        } // ScrolViewReader
    } // body
    
    private func scrollButtonLabel(_ text: String, fontSize: CGFloat = 20, width: CGFloat, height: CGFloat) -> some View {
        Image("wood_kanban5")
            .resizable()
            .frame(width: width, height: height)
            .overlay(
                rubyLabel(text, fontSize: fontSize)
            )
    }
    
    private func previousButtonText(for index: Int) -> String {
        return index == 0 ? "｜次《つぎ》の｜問題《もんだい》へ" : "｜一《ひと》つ｜前《まえ》の｜問題《もんだい》へ"
    }
    
    private func nextButtonText(for index: Int) -> String {
        return index == viewModel.questions.count - 1 ? "｜最初《さいしょ》の｜問題《もんだい》へ" : "｜次《つぎ》の｜問題《もんだい》へ"
    }
    
    private func rubyLabel(_ text: String, fontSize: CGFloat, textColor: UIColor = UIColor(.offWhite), textAlignment: NSTextAlignment = .center, opacity: Double = 0.8) -> some View {
        RubyLabelRepresentable(
            attributedText: text.createRuby(color: textColor),
            font: .chalkFont(ofSize: fontSize),
            textColor: textColor,
            textAlignment: textAlignment
        )
        .opacity(opacity)
    }
    
    private func navigationToResult() {
        router.navigationTo(.result(userAnswers: viewModel.userAnswers, questions: Array(viewModel.questions)))
    }
}
