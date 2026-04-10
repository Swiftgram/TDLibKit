//
//  FixTextWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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

