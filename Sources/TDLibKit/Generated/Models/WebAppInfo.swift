//
//  WebAppInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Contains information about a Web App
public struct WebAppInfo: Codable, Equatable, Hashable {

    /// Unique identifier for the Web App launch
    public let launchId: TdInt64

    /// The Web App URL to open in a web view
    public let url: WebAppUrl


    public init(
        launchId: TdInt64,
        url: WebAppUrl
    ) {
        self.launchId = launchId
        self.url = url
    }
}

