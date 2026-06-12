//
//  FixedText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// A text fixed using fixTextWithAi
public struct FixedText: Codable, Equatable, Hashable {

    /// Changes made to the original text
    public let diffText: DiffText

    /// The resulting text
    public let text: FormattedText


    public init(
        diffText: DiffText,
        text: FormattedText
    ) {
        self.diffText = diffText
        self.text = text
    }
}

