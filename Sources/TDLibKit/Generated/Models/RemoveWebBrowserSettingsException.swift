//
//  RemoveWebBrowserSettingsException.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Removes a special handling for the opening of the specified URL
public struct RemoveWebBrowserSettingsException: Codable, Equatable, Hashable {

    /// URL of the website
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

