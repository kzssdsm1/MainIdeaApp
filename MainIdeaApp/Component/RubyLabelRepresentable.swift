//
//  RubyLabelRepresentable.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/01/06.
//

import SwiftUI

struct RubyLabelRepresentable: UIViewRepresentable {
    let attributedText: NSAttributedString
    let font: UIFont
    let textColor: UIColor
    let textAlignment: NSTextAlignment
    
    private let rubyLabel = RubyLabel()

    func makeUIView(context: Context) -> UILabel {
        rubyLabel.numberOfLines = 0
        rubyLabel.setContentHuggingPriority(.required, for: .horizontal)
        rubyLabel.setContentHuggingPriority(.required, for: .vertical)
        
        return rubyLabel
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        rubyLabel.attributedText = attributedText
        rubyLabel.font = font
        rubyLabel.textColor = textColor
        rubyLabel.textAlignment = textAlignment
    }
}
