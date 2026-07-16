//
//  ChangeWebBrowserSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Changes web browser settings
public struct ChangeWebBrowserSettings: Codable, Equatable, Hashable {

    /// Pass true if a close button must be shown in the in-app browser; for Android app only
    public let displayCloseButton: Bool?

    /// Pass true if links must be opened in an external browser by default
    public let openExternalBrowser: Bool?


    public init(
        displayCloseButton: Bool?,
        openExternalBrowser: Bool?
    ) {
        self.displayCloseButton = displayCloseButton
        self.openExternalBrowser = openExternalBrowser
    }
}

