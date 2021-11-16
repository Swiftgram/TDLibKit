//
//  Hashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains a list of hashtags
public struct Hashtags: Codable {

    /// A list of hashtags
    public let hashtags: [String]


    public init(hashtags: [String]) {
        self.hashtags = hashtags
    }
}

