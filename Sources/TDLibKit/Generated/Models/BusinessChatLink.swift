//
//  BusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Contains information about a business chat link
public struct BusinessChatLink: Codable, Equatable, Hashable {

    /// The HTTPS link
    public let link: String

    /// Message draft text that will be added to the input field
    public let text: FormattedText

    /// Link title
    public let title: String

    /// Number of times the link was used
    public let viewCount: Int


    public init(
        link: String,
        text: FormattedText,
        title: String,
        viewCount: Int
    ) {
        self.link = link
        self.text = text
        self.title = title
        self.viewCount = viewCount
    }
}

