//
//  GetMessageFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Returns information about a file with messages exported from another app
public struct GetMessageFileType: Codable {

    /// Beginning of the message file; up to 100 first lines
    public let messageFileHead: String


    public init(messageFileHead: String) {
        self.messageFileHead = messageFileHead
    }
}
