//
//  CheckWebAppFileDownload.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Checks whether a file can be downloaded and saved locally by a Web App request
public struct CheckWebAppFileDownload: Codable, Equatable, Hashable {

    /// Identifier of the bot providing the Web App
    public let botUserId: Int64?

    /// Name of the file
    public let fileName: String?

    /// URL of the file
    public let url: String?


    public init(
        botUserId: Int64?,
        fileName: String?,
        url: String?
    ) {
        self.botUserId = botUserId
        self.fileName = fileName
        self.url = url
    }
}

