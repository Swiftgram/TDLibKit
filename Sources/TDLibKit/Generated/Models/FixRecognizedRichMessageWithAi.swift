//
//  FixRecognizedRichMessageWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-6126ecae
//  https://github.com/tdlib/td/tree/6126ecae
//

import Foundation


/// Fixes a rich message with text received as a result of speech recognition using an AI model by correcting recognition errors and adding punctuation. May return an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send further requests
public struct FixRecognizedRichMessageWithAi: Codable, Equatable, Hashable {

    /// The message with the recognized text
    public let message: InputRichMessage?


    public init(message: InputRichMessage?) {
        self.message = message
    }
}

