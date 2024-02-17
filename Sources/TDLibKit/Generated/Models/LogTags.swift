//
//  LogTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-d0ff90bb
//  https://github.com/tdlib/td/tree/d0ff90bb
//

import Foundation


/// Contains a list of available TDLib internal log tags
public struct LogTags: Codable, Equatable, Hashable {

    /// List of log tags
    public let tags: [String]


    public init(tags: [String]) {
        self.tags = tags
    }
}

