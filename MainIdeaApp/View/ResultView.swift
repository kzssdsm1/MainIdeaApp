//
//  ResultView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/24.
//

import SwiftUI

struct ResultView: View {
    @StateObject var viewModel: ResultViewModel
    
    @State private var isShowingResultComponents = false
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    private let textColor = UIColor(.offWhite)
    
    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    rubyLabel(viewModel.getTextForResult(), fontSize: 27, opacity: isShowingResultComponents ? 0.8 : 0)
                        .padding()
                    
                    if viewModel.isShowingResultImage {
                        Image(viewModel.getImageNameForScore())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: screenHeight * 0.4)
                            .opacity(isShowingResultComponents ? 1 : 0)
                            .padding()
                            .onAppear {
                                withAnimation {
                                    isShowingResultComponents = true
                                } // withAnimation
                            } // onAppear
                    } else {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(height: screenHeight * 0.45)
                            .padding()
                    }
                    
                    rubyLabel("｜君《きみ》の｜得点《とくてん》", fontSize: 27)
                        .padding()
                    
                    Text("\(viewModel.displayedUserScore)点")
                        .foregroundColor(.offWhite)
                        .font(.custom("Tanuki-Permanent-Marker", size: 30))
                        .opacity(0.8)
                        .padding()
                        .onAppear {
                            withAnimation {
                                viewModel.presentScoreWithAnimation()
                            } // withAnimation
                        } // onAppear
                    
                    Button(action: {
                        withAnimation {
                            scrollProxy.scrollTo(0)
                        } // withAnimation
                    }, label: {
                        scrollButtonLabel("｜答《こた》え｜合《あ》わせをする", width: 200, height: 80)
                    })
                    .opacity(isShowingResultComponents ? 1 : 0.6)
                    .disabled(!isShowingResultComponents)
                    .padding()
                    
                    Divider()
                        .frame(width: screenWidth - 20)
                        .background(Color.offWhite)
                    
                    if isShowingResultComponents {
                        ForEach(0..<viewModel.questions.count, id: \.self) { index in
                            VStack {
                                UserAnswerView(viewModel: viewModel, viewId: index)
                                
                                HStack {
                                    Spacer()
                                    
                                    Button(action: {
                                        let targetIndex = index == 0 ? 1 : index - 1
                                        
                                        withAnimation {
                                            scrollProxy.scrollTo(targetIndex)
                                        } // withAnimation
                                    }, label: {
                                        scrollButtonLabel(previousButtonText(for: index), width: 180, height: 80)
                                    })
                                    .padding()
                                    
                                    Button(action: {
                                        let targetIndex = index == viewModel.questions.count - 1 ? 0 : index + 1
                                        
                                        withAnimation {
                                            scrollProxy.scrollTo(targetIndex)
                                        } // withAnimation
                                    }, label: {
                                        scrollButtonLabel(nextButtonText(for: index), width: 160, height: 80)
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
                    }
                } // VStack
            } // ScrollView
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
        } // ScrollViewReader
    } // body
    
    private func previousButtonText(for index: Int) -> String {
        return index == 0 ? "｜次《つぎ》の｜問題《もんだい》へ" : "｜一《ひと》つ｜前《まえ》の｜問題《もんだい》へ"
    }
    
    private func nextButtonText(for index: Int) -> String {
        return index == viewModel.questions.count - 1 ? "｜最初《さいしょ》の｜問題《もんだい》へ" : "｜次《つぎ》の｜問題《もんだい》へ"
    }
    
    private func rubyLabel(_ text: String, fontSize: CGFloat, textAlignment: NSTextAlignment = .center, opacity: Double = 0.8) -> some View {
        RubyLabelRepresentable(
            attributedText: text.createRuby(color: textColor),
            font: .chalkFont(ofSize: fontSize),
            textColor: textColor,
            textAlignment: textAlignment
        )
        .opacity(opacity)
    }
    
    private func scrollButtonLabel(_ text: String, fontSize: CGFloat = 20, width: CGFloat, height: CGFloat) -> some View {
        Image("wood_kanban5")
            .resizable()
            .frame(width: width, height: height)
            .overlay(
                rubyLabel(text, fontSize: fontSize)
            )
    }
}
