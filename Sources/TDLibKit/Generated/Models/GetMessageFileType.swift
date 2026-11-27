//
//  GetMessageFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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

