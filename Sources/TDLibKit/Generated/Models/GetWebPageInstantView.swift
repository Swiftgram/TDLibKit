//
//  GetWebPageInstantView.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page
public struct GetWebPageInstantView: Codable, Equatable, Hashable {

    /// Pass true to get full instant view for the web page
    public let forceFull: Bool?

    /// The web page URL
    public let url: String?


    public init(
        forceFull: Bool?,
        url: String?
    ) {
        self.forceFull = forceFull
        self.url = url
    }
}

