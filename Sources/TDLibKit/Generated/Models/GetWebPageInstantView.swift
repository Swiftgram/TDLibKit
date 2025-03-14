//
//  GetWebPageInstantView.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Returns an instant view version of a web page if available. This is an offline method if only_local is true. Returns a 404 error if the web page has no instant view page
public struct GetWebPageInstantView: Codable, Equatable, Hashable {

    /// Pass true to get only locally available information without sending network requests
    public let onlyLocal: Bool?

    /// The web page URL
    public let url: String?


    public init(
        onlyLocal: Bool?,
        url: String?
    ) {
        self.onlyLocal = onlyLocal
        self.url = url
    }
}

