//
//  ResultView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/24.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject private var router: Router
    
    @StateObject var viewModel: ResultViewModel
    
    @State private var isShowingResultComponents = false
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    private let textColor = UIColor(.offWhite)
    
    private var resultImageSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return screenHeight * 0.4
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return screenHeight * 0.4
            default:
                return screenHeight * 0.35
            }
        }
    }
    private var scoreMessageSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 45
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 28
            default:
                return 24
            }
        }
    }
    private var scoreFontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 50
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 30
            default:
                return 25
            }
        }
    }
    private var checkAnswersButtonWidth: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 320
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 200
            default:
                return 180
            }
        }
    }
    private var leftSignboardWidth: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 280
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 180
            default:
                return 150
            }
        }
    }
    private var rightSignboardWidth: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 250
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 160
            default:
                return 140
            }
        }
    }
    
    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    Spacer(minLength: 30)
                    
                    rubyLabel(viewModel.getTextForResult(), fontSize: scoreMessageSize, opacity: isShowingResultComponents ? 0.8 : 0)
                        .padding()
                    
                    if viewModel.isShowingResultImage {
                        Image(viewModel.getImageNameForScore())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: resultImageSize)
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
                            .frame(height: resultImageSize)
                            .padding()
                    }
                    
                    rubyLabel("｜君《きみ》の｜得点《とくてん》", fontSize: scoreMessageSize)
                        .padding()
                    
                    Text("\(viewModel.displayedUserScore)点")
                        .foregroundColor(.offWhite)
                        .font(.custom("Tanuki-Permanent-Marker", size: scoreFontSize))
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
                        WoodSignboardView(viewWidth: checkAnswersButtonWidth, labelText: "｜答《こた》え｜合《あ》わせをする")
                    })
                    .opacity(isShowingResultComponents ? 1 : 0.6)
                    .disabled(!isShowingResultComponents)
                    .padding()
                    
                    Spacer(minLength: 30)
                    
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
                                        WoodSignboardView(viewWidth: leftSignboardWidth, labelText: previousButtonText(for: index))
                                    })
                                    .padding()
                                    
                                    Button(action: {
                                        let targetIndex = index == viewModel.questions.count - 1 ? 0 : index + 1
                                        
                                        withAnimation {
                                            scrollProxy.scrollTo(targetIndex)
                                        } // withAnimation
                                    }, label: {
                                        WoodSignboardView(viewWidth: rightSignboardWidth, labelText: nextButtonText(for: index))
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
