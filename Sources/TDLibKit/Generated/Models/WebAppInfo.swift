//
//  WebAppInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-906d773d
//  https://github.com/tdlib/td/tree/906d773d
//

import Foundation


/// Contains information about a Web App
public struct WebAppInfo: Codable, Equatable {

    /// Unique identifier for the Web App launch
    public let launchId: TdInt64

    /// A Web App URL to open in a web view
    public let url: String


    public init(
        launchId: TdInt64,
        url: String
    ) {
        self.launchId = launchId
        self.url = url
    }
}
