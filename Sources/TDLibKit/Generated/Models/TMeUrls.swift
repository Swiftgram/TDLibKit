//
//  TMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Contains a list of t.me URLs
public struct TMeUrls: Codable, Equatable, Hashable {

    /// List of URLs
    public let urls: [TMeUrl]


    public init(urls: [TMeUrl]) {
        self.urls = urls
    }
}

