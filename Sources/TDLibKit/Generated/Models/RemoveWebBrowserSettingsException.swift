//
//  RemoveWebBrowserSettingsException.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Removes special handling for the opening of the specified URL
public struct RemoveWebBrowserSettingsException: Codable, Equatable, Hashable {

    /// URL of the website
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

