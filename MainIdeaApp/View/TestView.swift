//
//  TestView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/01/06.
//

import SwiftUI

struct TestView: View {
    private let paragraphStyle = NSMutableParagraphStyle()
    
    var body: some View {
        VStack {
            RubyLabelRepresentable(
                attributedText: "おばあちゃんは白いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる".createRuby(),
                font: .systemFont(ofSize: 24),
                textColor: .black,
                textAlignment: .center
            )
        }
    }
}
