//
//  TextCompositionStyleExample.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Contains an example of text composition style usage
public struct TextCompositionStyleExample: Codable, Equatable, Hashable {

    /// The text after the style was applied to the source text
    public let resultText: FormattedText

    /// Source text
    public let sourceText: FormattedText


    public init(
        resultText: FormattedText,
        sourceText: FormattedText
    ) {
        self.resultText = resultText
        self.sourceText = sourceText
    }
}

