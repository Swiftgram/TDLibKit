//
//  FixRichMessageWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
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

