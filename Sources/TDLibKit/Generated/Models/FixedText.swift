//
//  FixedText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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

