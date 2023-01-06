//
//  RubyLabel.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/01/06.
//

import UIKit

class RubyLabel: UILabel {
    override func drawText(in rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.translateBy(x: 0, y: rect.height)
        context.scaleBy(x: 1.0, y: -1.0)

        guard let attributedText = attributedText else { return }
        let frame = CTFramesetterCreateFrame(
            CTFramesetterCreateWithAttributedString(attributedText),
            CFRangeMake(0, attributedText.length),
            CGPath(rect: rect, transform: nil),
            nil
        )
        CTFrameDraw(frame, context)
    }

    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        let intrinsicContentWidth = size.width
        guard let attributedText = attributedText else {
            let newHeight = size.height * 1.5
            return CGSize(width: intrinsicContentWidth, height: newHeight)
        }
        
        let setter = CTFramesetterCreateWithAttributedString(attributedText)
        let range = CFRange()
        let constraints = CGSize(width: intrinsicContentWidth, height: CGFloat.greatestFiniteMagnitude)
        let frameSize = CTFramesetterSuggestFrameSizeWithConstraints(setter, range, nil, constraints, nil)
        return CGSize(width: intrinsicContentWidth, height: frameSize.height)
    }
}
