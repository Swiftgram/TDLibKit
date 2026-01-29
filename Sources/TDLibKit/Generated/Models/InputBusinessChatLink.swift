//
//  InputBusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
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

