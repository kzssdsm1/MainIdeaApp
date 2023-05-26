//
//  ExampleResultView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/21.
//

import SwiftUI

struct ExampleResultView: View {
    @EnvironmentObject private var router: Router
    
    @StateObject var viewModel: ExampleResultViewModel
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    private var resultLabelText: String {
        return viewModel.question.correctAnswer == viewModel.userAnswer ? "｜正解《せいかい》！" : "｜不正解《ふせいかい》・・・"
    }
    private var resultLabelColor: UIColor {
        return viewModel.question.correctAnswer == viewModel.userAnswer ? UIColor(.chalkBlue) : UIColor(.chalkPink)
    }
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
    private var textFontWidth: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 42
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 25
            default:
                return 22
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
    private var answerfontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 45
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 25
            default:
                return 22
            }
        }
    }
    private var answerSectionfontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 38
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 22
            default:
                return 20
            }
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                rubyLabel(resultLabelText, fontSize: scoreFontSize, textColor: resultLabelColor, bottomPadding: 10)
                    .padding(.top, 20)
                
                resultImage()
                
                rubyLabel("｜君《きみ》の｜回答《かいとう》：", fontSize: answerSectionfontSize, bottomPadding: 10)
                
                rubyLabel(viewModel.userAnswer, fontSize: answerfontSize, bottomPadding: 30)
                
                rubyLabel("｜正解《せいかい》：", fontSize: answerSectionfontSize, textColor: UIColor(.chalkBlue), bottomPadding: 10)
                
                rubyLabel(viewModel.question.correctAnswer, fontSize: answerfontSize, textColor: UIColor(.chalkBlue), bottomPadding: 40)
                
                rubyLabel("｜以上《いじょう》のような｜問題《もんだい》が｜合計《ごうけい》｜五問《ごもん》｜出題《しゅつだい》されます。", fontSize: textFontWidth, bottomPadding: 15)
                
                rubyLabel("｜全問《ぜんもん》｜正解《せいかい》を｜目指《めざ》して｜頑張《がんば》りましょう！", fontSize: textFontWidth, bottomPadding: 30)
            } // VStack
        } // ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    router.backToPrevious()
                }, label: {
                    HStack {
                        Image(systemName: "arrowshape.turn.up.left.fill")
                            .foregroundColor(.blue)
                        
                        Text("もどる")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    } // HStack
                })
            } // ToolBarItem
            
            ToolbarItem(placement: .navigationBarTrailing) {
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
            } // ToolBarItem
        } // toolbar
    } // body
    
    private func resultImage() -> some View {
        Image(viewModel.getImageNameForScore())
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: resultImageSize)
            .padding(.horizontal)
            .padding(.top, 15)
            .padding(.bottom, 30)
    }
    
    private func rubyLabel(_ text: String, fontSize: CGFloat, textColor: UIColor = UIColor(.offWhite), textAlignment: NSTextAlignment = .center, bottomPadding: CGFloat) -> some View {
        RubyLabelRepresentable(
            attributedText: text.createRuby(color: textColor),
            font: .chalkFont(ofSize: fontSize),
            textColor: textColor,
            textAlignment: textAlignment
        )
        .opacity(0.8)
        .padding(.horizontal)
        .padding(.bottom, bottomPadding)
    }
}
