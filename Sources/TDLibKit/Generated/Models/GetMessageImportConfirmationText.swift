//
//  GetMessageImportConfirmationText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Returns a confirmation text to be shown to the user before starting message import
public struct GetMessageImportConfirmationText: Codable {

    /// Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

