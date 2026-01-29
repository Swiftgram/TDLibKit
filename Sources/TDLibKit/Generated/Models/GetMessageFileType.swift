//
//  GetMessageFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
//

import Foundation


/// Returns information about a file with messages exported from another application
public struct GetMessageFileType: Codable, Equatable, Hashable {

    /// Beginning of the message file; up to 100 first lines
    public let messageFileHead: String?


    public init(messageFileHead: String?) {
        self.messageFileHead = messageFileHead
    }
}

