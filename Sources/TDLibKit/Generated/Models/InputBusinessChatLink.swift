//
//  InputBusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Describes a business chat link to create or edit
public struct InputBusinessChatLink: Codable, Equatable, Hashable {

    /// Message draft text that will be added to the input field
    public let text: FormattedText

    /// Link title
    public let title: String


    public init(
        text: FormattedText,
        title: String
    ) {
        self.text = text
        self.title = title
    }
}

