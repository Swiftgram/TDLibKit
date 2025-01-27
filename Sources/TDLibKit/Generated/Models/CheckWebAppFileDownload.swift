//
//  CheckWebAppFileDownload.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Checks whether a file can be downloaded and saved locally by Web App request
public struct CheckWebAppFileDownload: Codable, Equatable, Hashable {

    /// Identifier of the bot, providing the Web App
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

