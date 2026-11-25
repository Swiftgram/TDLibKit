//
//  GetMessageFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns information about a file with messages exported from another application
public struct GetMessageFileType: Codable, Equatable, Hashable {

    /// Beginning of the message file; up to the first 100 lines
    public let messageFileHead: String?


    public init(messageFileHead: String?) {
        self.messageFileHead = messageFileHead
    }
}

