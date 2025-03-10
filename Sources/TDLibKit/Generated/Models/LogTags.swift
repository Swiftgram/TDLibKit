//
//  LogTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-207f3be7
//  https://github.com/tdlib/td/tree/207f3be7
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

