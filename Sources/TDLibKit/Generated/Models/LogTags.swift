//
//  LogTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains a list of available TDLib internal log tags
public struct LogTags: Codable {

    /// List of log tags
    public let tags: [String]


    public init(tags: [String]) {
        self.tags = tags
    }
}

