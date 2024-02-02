//
//  Hashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
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

