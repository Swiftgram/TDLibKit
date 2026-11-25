//
//  WebAppInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

