//
//  DescriptionView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/11/11.
//

import SwiftUI

struct DescriptionView: View {
    @EnvironmentObject private var router: Router
    
    @StateObject private var viewModel = DescriptionViewModel()
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    private var textFontWidth: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return 42
        } else {
            return 25
        }
    }
    private var navButtonWidth: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return 320
        } else {
            return 200
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                rubyLabel("このアプリは、｜状況《じょうきょう》に｜応《おう》じて、｜相手《あいて》の｜最《もっと》も｜伝《つた》えたいこと、『｜主題《しゅだい》』を｜正《ただ》しく｜読《よ》み｜取《と》る｜能力《のうりょく》を｜身《み》につけるためのアプリです。")
                    .padding(10)
                    .padding(.top, 30)
                    .padding(.bottom, 20)
                
                rubyLabel("このアプリでは、｜一回《いっかい》のゲームにつき、｜五《いつ》つのクイズが｜出題《しゅつだい》されます。")
                    .padding(15)
                    .padding(.bottom, 20)
                
                rubyLabel("｜一《ひと》つのクイズの｜中《なか》では、 一つの｜絵《え》と、その絵について｜説明《せつめい》している、｜三《みっ》つの｜文《ぶん》が｜表示《ひょうじ》されます。")
                    .padding(15)
                    .padding(.bottom, 20)
                
                rubyLabel("その絵を｜描《か》いた｜人《ひと》が最も伝えたいと｜思《おも》われることを、三つの文の｜中《なか》から一つ｜選《えら》んでください。")
                    .padding(15)
                    .padding(.bottom, 20)
                
                rubyLabel("それではさっそく｜例題《れいだい》を｜解《と》いてみましょう。")
                    .padding([.top, .horizontal], 15)
                    .padding(.bottom, 40)
                
                Image(viewModel.question!.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: screenHeight * 0.35)
                    .padding()
                
                ForEach(viewModel.question!.choices, id: \.self) { item in
                    Button(action: {
                        viewModel.userAnswer = item
                    }, label: {
                        if viewModel.userAnswer == item {
                            rubyLabel(item, textColor: UIColor(.yellow), textAlignment: .left)
                        } else {
                            rubyLabel(item, textAlignment: .left)
                        }
                    })
                    .padding(10)
                } // ForEach
                .padding(.bottom, 10)
                
                Button(action: {
                    navigationToExampleResult()
                }, label: {
                    WoodSignboardView(viewWidth: navButtonWidth, labelText: "｜答《こた》え｜合《あ》わせをする")
                    //navigationButtonLabel("｜答《こた》え｜合《あ》わせをする", width: 200, height: 80)
                })
                .opacity(!viewModel.userAnswer.isEmpty ? 1 : 0.6)
                .disabled(viewModel.userAnswer.isEmpty)
                .padding()
                .padding(.bottom, 30)
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
                } // ToolBarItem
            } // toolbar
        } // ScrollView
    } // body
    
    private func rubyLabel(_ text: String, textColor: UIColor = UIColor(.offWhite), textAlignment: NSTextAlignment = .center, opacity: Double = 0.8) -> some View {
        RubyLabelRepresentable(
            attributedText: text.createRuby(color: textColor),
            font: .chalkFont(ofSize: textFontWidth),
            textColor: textColor,
            textAlignment: textAlignment
        )
        .opacity(opacity)
    }
    
    private func navigationToExampleResult() {
        router.navigationTo(.exampleResult(userAnswer: viewModel.userAnswer, question: viewModel.question!))
    }
}
