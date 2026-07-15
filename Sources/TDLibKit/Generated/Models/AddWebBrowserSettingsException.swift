//
//  AddWebBrowserSettingsException.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Adds a special handling for the opening of the specified URL
public struct AddWebBrowserSettingsException: Codable, Equatable, Hashable {

    /// Pass true if the specified website must be opened in an external browser; pass false to open it in the in-app browser. There can be at most 100 exceptions in each list of the exceptions
    public let openExternalBrowser: Bool?

    /// URL of the website
    public let url: String?


    public init(
        openExternalBrowser: Bool?,
        url: String?
    ) {
        self.openExternalBrowser = openExternalBrowser
        self.url = url
    }
}

