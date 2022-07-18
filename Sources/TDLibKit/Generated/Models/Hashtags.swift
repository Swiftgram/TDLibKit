//
//  Hashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0147c97f
//  https://github.com/tdlib/td/tree/0147c97f
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

