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
    
    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    RubyLabelRepresentable(
                        attributedText: viewModel.getTextForResult().createRuby(color: UIColor(.offWhite)),
                        font: UIFont(name: "Tanuki-Permanent-Marker", size: 27)!,
                        textColor: UIColor(.offWhite),
                        textAlignment: .center
                    )
                    .opacity(isShowingResultComponents ? 0.8 : 0)
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
                    
                    RubyLabelRepresentable(
                        attributedText: "｜君《きみ》の｜得点《とくてん》".createRuby(color: UIColor(.offWhite)),
                        font: UIFont(name: "Tanuki-Permanent-Marker", size: 27)!,
                        textColor: UIColor(.offWhite),
                        textAlignment: .center
                    )
                    .opacity(0.8)
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
                        Image("wood_kanban5")
                            .resizable()
                            .frame(width: 200, height: 80)
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
                                
                                Divider()
                                    .frame(width: screenWidth - 20)
                                    .background(Color.offWhite)
                            } // VStack
                            .id(index)
                        } // ForEach
                    }
                } // VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
            } // ScrollView
        } // ScrollViewReader
    } // body
}
