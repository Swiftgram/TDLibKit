//
//  GetSpeechRecognitionLanguages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
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

