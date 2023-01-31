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
            attributedText: "｜男《おとこ》の｜子《こ》が｜悲《かな》しんでいる".createRuby(),
            font: .systemFont(ofSize: 22),
            textColor: .black,
            textAlignment: .left
        )
    } // body
}
