//
//  RemoveWebBrowserSettingsException.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
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

