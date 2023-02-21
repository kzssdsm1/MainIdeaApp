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
            attributedText: "｜試験《しけん》｜前《まえ》にネコをひざの上に｜乗《の》せて｜勉強《べんきょう》を｜頑張《がんば》っている".createRuby(),
            font: .systemFont(ofSize: 22),
            textColor: .black,
            textAlignment: .left
        )
    } // body
}
