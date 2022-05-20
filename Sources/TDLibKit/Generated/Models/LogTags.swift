//
//  LogTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-9c9a74c5
//  https://github.com/tdlib/td/tree/9c9a74c5
//

import Foundation


/// Contains a list of available TDLib internal log tags
public struct LogTags: Codable, Equatable {

    /// List of log tags
    public let tags: [String]


    public init(tags: [String]) {
        self.tags = tags
    }
}

