//
//  DescriptionView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/11/11.
//

import SwiftUI

struct DescriptionView: View {
    @EnvironmentObject private var router: Router
    
    let question = QuestionContext.questions.randomElement()?.imageName
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                rubyLabel("このアプリは、｜状況《じょうきょう》に｜応《おう》じて、｜相手《あいて》の｜最《もっと》も｜伝《つた》えたいこと、『｜主題《しゅだい》』を｜正《ただ》しく｜読《よ》み｜取《と》る｜能力《のうりょく》を｜身《み》につけるためのアプリです。")
                    .padding(10)
                
                rubyLabel("このアプリでは、｜一回《いっかい》のゲームにつき、｜五《いつ》つのクイズが｜出題《しゅつだい》されます。")
                    .padding(10)
                
                rubyLabel("｜一《ひと》つのクイズの｜中《なか》では、 一つの｜絵《え》と、その絵について｜説明《せつめい》している、｜三《みっ》つの｜文《ぶん》が｜表示《ひょうじ》されます。")
                    .padding(10)
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
    } // body
    
    private func rubyLabel(_ text: String, fontSize: CGFloat = 25, textAlignment: NSTextAlignment = .center, opacity: Double = 0.8) -> some View {
        RubyLabelRepresentable(
            attributedText: text.createRuby(color: UIColor(.offWhite)),
            font: .chalkFont(ofSize: fontSize),
            textColor: UIColor(.offWhite),
            textAlignment: textAlignment
        )
        .opacity(opacity)
    }
}
