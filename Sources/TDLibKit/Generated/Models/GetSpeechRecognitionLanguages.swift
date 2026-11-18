//
//  GetSpeechRecognitionLanguages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-fe61d641
//  https://github.com/tdlib/td/tree/fe61d641
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

