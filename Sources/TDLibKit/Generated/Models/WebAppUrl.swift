//
//  WebAppUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
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

