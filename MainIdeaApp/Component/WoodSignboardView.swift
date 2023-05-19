//
//  WoodSignboardView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/05/19.
//

import SwiftUI

struct WoodSignboardView: View {
    
    let viewWidth: CGFloat
    let viewHeight: CGFloat
    let fontSize: CGFloat
    let labelText: String
    
    var body: some View {
        Image("wood_kanban5")
            .resizable()
            .frame(width: viewWidth, height: viewHeight)
            .overlay(
                RubyLabelRepresentable(
                    attributedText: labelText.createRuby(color: UIColor(.offWhite)),
                    font: .chalkFont(ofSize: fontSize),
                    textColor: UIColor(.offWhite),
                    textAlignment: .center
                )
                .opacity(0.8)
            )
    }
}
