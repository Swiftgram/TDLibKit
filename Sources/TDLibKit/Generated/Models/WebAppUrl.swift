//
//  WebAppUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Contains information about a Web App URL
public struct WebAppUrl: Codable, Equatable, Hashable {

    /// True, if events from the Web App must be accepted only from the same origin as the URL
    public let requireSameOrigin: Bool

    /// The Web App URL to open in a web view
    public let url: String


    public init(
        requireSameOrigin: Bool,
        url: String
    ) {
        self.requireSameOrigin = requireSameOrigin
        self.url = url
    }
}

