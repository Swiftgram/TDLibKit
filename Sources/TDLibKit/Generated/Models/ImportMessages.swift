//
//  ImportMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Imports messages exported from another app
public struct ImportMessages: Codable, Equatable, Hashable {

    /// Files used in the imported messages. Only inputFileLocal and inputFileGenerated are supported. The files must not be previously uploaded
    public let attachedFiles: [InputFile]?

    /// Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info member right
    public let chatId: Int64?

    /// File with messages to import. Only inputFileLocal and inputFileGenerated are supported. The file must not be previously uploaded
    public let messageFile: InputFile?


    public init(
        attachedFiles: [InputFile]?,
        chatId: Int64?,
        messageFile: InputFile?
    ) {
        self.attachedFiles = attachedFiles
        self.chatId = chatId
        self.messageFile = messageFile
    }
}

