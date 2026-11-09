//
//  GetSpeechRecognitionLanguages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-6126ecae
//  https://github.com/tdlib/td/tree/6126ecae
//

import Foundation


/// Returns 1-3 most probable languages of speech in voice notes
public struct GetSpeechRecognitionLanguages: Codable, Equatable, Hashable {

    /// Identifier of the chat; pass 0 if none
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

