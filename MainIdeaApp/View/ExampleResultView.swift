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
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                rubyLabel(resultLabelText, fontSize: 30, textColor: resultLabelColor, bottomPadding: 10)
                    .padding(.top, 20)
                
                resultImage()
                
                rubyLabel("｜君《きみ》の｜回答《かいとう》：", fontSize: 22, bottomPadding: 10)
                
                rubyLabel(viewModel.userAnswer, fontSize: 25, bottomPadding: 30)
                
                rubyLabel("｜正解《せいかい》：", fontSize: 22, textColor: UIColor(.chalkBlue), bottomPadding: 10)
                
                rubyLabel(viewModel.question.correctAnswer, fontSize: 25, textColor: UIColor(.chalkBlue), bottomPadding: 40)
                
                rubyLabel("｜以上《いじょう》のような｜問題《もんだい》が｜合計《ごうけい》｜五問《ごもん》｜出題《しゅつだい》されます。", fontSize: 25, bottomPadding: 15)
                
                rubyLabel("｜全問《ぜんもん》｜正解《せいかい》を｜目指《めざ》して｜頑張《がんば》りましょう！", fontSize: 25, bottomPadding: 30)
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
            .frame(height: screenHeight * 0.35)
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
