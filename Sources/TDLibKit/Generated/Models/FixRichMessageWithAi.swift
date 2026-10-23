//
//  FixRichMessageWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Fixes a rich message using an AI model. May return an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send further requests
public struct FixRichMessageWithAi: Codable, Equatable, Hashable {

    /// The original message
    public let message: InputRichMessage?


    public init(message: InputRichMessage?) {
        self.message = message
    }
}

