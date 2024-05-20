//
//  BusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
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

