//
//  TestView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/01/06.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        RubyLabelRepresentable(
            attributedText: "｜一人《ひとり》｜乗《の》り｜自転車《じてんしゃ》".createRuby(),
            font: .systemFont(ofSize: 22),
            textColor: .black,
            textAlignment: .left
        )
    } // body
}
