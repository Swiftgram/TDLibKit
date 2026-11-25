//
//  GetSpeechRecognitionLanguages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns the 1-3 most probable languages of speech in voice notes
public struct GetSpeechRecognitionLanguages: Codable, Equatable, Hashable {

    /// Identifier of the chat; pass 0 if none
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

