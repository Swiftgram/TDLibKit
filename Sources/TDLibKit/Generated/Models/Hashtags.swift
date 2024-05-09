//
//  Hashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-e4796b9b
//  https://github.com/tdlib/td/tree/e4796b9b
//

import Foundation


/// Contains a list of hashtags
public struct Hashtags: Codable, Equatable, Hashable {

    /// A list of hashtags
    public let hashtags: [String]


    public init(hashtags: [String]) {
        self.hashtags = hashtags
    }
}

