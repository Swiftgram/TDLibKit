//
//  Hashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-3ae2ec38
//  https://github.com/tdlib/td/tree/3ae2ec38
//

import Foundation


/// Contains a list of hashtags
public struct Hashtags: Codable, Equatable {

    /// A list of hashtags
    public let hashtags: [String]


    public init(hashtags: [String]) {
        self.hashtags = hashtags
    }
}

