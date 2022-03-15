//
//  GetMessageFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-a78245ee
//  https://github.com/tdlib/td/tree/a78245ee
//

import Foundation


/// Returns information about a file with messages exported from another app
public struct GetMessageFileType: Codable, Equatable {

    /// Beginning of the message file; up to 100 first lines
    public let messageFileHead: String?


    public init(messageFileHead: String?) {
        self.messageFileHead = messageFileHead
    }
}

