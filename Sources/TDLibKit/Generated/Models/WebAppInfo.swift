//
//  WebAppInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Contains information about a Web App
public struct WebAppInfo: Codable, Equatable, Hashable {

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

