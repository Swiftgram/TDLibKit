//
//  WebAppInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-3ae2ec38
//  https://github.com/tdlib/td/tree/3ae2ec38
//

import Foundation


/// Contains information about a web app
public struct WebAppInfo: Codable, Equatable {

    /// Unique identifier for the web app launch
    public let launchId: TdInt64

    /// A web app URL to open in a web view
    public let url: String


    public init(
        launchId: TdInt64,
        url: String
    ) {
        self.launchId = launchId
        self.url = url
    }
}

