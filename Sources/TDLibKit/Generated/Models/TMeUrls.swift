//
//  TMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

