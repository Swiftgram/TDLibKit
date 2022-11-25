//
//  GetWebPagePreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-3ec53c8d
//  https://github.com/tdlib/td/tree/3ec53c8d
//

import Foundation


/// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview
public struct GetWebPagePreview: Codable, Equatable {

    /// Message text with formatting
    public let text: FormattedText?


    public init(text: FormattedText?) {
        self.text = text
    }
}

