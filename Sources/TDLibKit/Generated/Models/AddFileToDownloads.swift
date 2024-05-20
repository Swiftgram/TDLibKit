//
//  AddFileToDownloads.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Adds a file from a message to the list of file downloads. Download progress and completion of the download will be notified through updateFile updates. If message database is used, the list of file downloads is persistent across application restarts. The downloading is independent of download using downloadFile, i.e. it continues if downloadFile is canceled or is used to download a part of the file
public struct AddFileToDownloads: Codable, Equatable, Hashable {

    /// Chat identifier of the message with the file
    public let chatId: Int64?

    /// Identifier of the file to download
    public let fileId: Int?

    /// Message identifier
    public let messageId: Int64?

    /// Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called will be downloaded first
    public let priority: Int?


    public init(
        chatId: Int64?,
        fileId: Int?,
        messageId: Int64?,
        priority: Int?
    ) {
        self.chatId = chatId
        self.fileId = fileId
        self.messageId = messageId
        self.priority = priority
    }
}

