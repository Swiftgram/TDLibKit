//
//  FixedText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
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

