//
//  GetWebPagePreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
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

