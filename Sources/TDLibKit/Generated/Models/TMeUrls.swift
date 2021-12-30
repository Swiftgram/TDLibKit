//
//  TMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
//

import Foundation


/// Contains a list of t.me URLs
public struct TMeUrls: Codable, Equatable {

    /// List of URLs
    public let urls: [TMeUrl]


    public init(urls: [TMeUrl]) {
        self.urls = urls
    }
}

