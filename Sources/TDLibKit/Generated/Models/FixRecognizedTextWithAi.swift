//
//  FixRecognizedTextWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Fixes text received as a result of speech recognition using an AI model by correcting recognition errors and adding punctuation; must not be used in secret chats. May return an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send further requests
public struct FixRecognizedTextWithAi: Codable, Equatable, Hashable {

    /// The recognized text
    public let text: FormattedText?


    public init(text: FormattedText?) {
        self.text = text
    }
}

