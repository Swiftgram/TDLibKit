//
//  FixTextWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Fixes text using an AI model; must not be used in secret chats. May return an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send further requests
public struct FixTextWithAi: Codable, Equatable, Hashable {

    /// The original text
    public let text: FormattedText?


    public init(text: FormattedText?) {
        self.text = text
    }
}

