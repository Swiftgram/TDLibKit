//
//  GetMessageFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
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

