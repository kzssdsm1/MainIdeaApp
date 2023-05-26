//
//  WoodSignboardView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/05/19.
//

import SwiftUI

struct WoodSignboardView: View {
    
    let viewWidth: CGFloat
    let labelText: String
    
    private var viewHeight: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 120
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 80
            default:
                return 60
            }
        }
    }
    private var labelFontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad
            return 30
        } else {
            switch UIScreen.main.bounds.height {
            case 812...:
                return 20
            default:
                return 15
            }
        }
    }
    
    var body: some View {
        Image("wood_kanban5")
            .resizable()
            .frame(width: viewWidth, height: viewHeight)
            .overlay(
                RubyLabelRepresentable(
                    attributedText: labelText.createRuby(color: UIColor(.offWhite)),
                    font: .chalkFont(ofSize: labelFontSize),
                    textColor: UIColor(.offWhite),
                    textAlignment: .center
                )
                .opacity(0.8)
            )
    }
}
