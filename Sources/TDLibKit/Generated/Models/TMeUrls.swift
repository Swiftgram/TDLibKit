//
//  TMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Contains a list of t.me URLs
public struct TMeUrls: Codable {

    /// List of URLs
    public let urls: [TMeUrl]


    public init(urls: [TMeUrl]) {
        self.urls = urls
    }
}

