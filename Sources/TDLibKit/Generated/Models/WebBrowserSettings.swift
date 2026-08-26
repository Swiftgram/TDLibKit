//
//  WebBrowserSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Describes web browser settings
public struct WebBrowserSettings: Codable, Equatable, Hashable {

    /// True, if a close button must be shown in the in-app browser; for Android app only
    public let displayCloseButton: Bool

    /// The list of websites which must always be opened in an external browser
    public let externalExceptions: [WebDomainException]

    /// The list of websites which must always be opened in the in-app browser
    public let inAppExceptions: [WebDomainException]

    /// True, if links are opened in an external browser by default
    public let openExternalBrowser: Bool


    public init(
        displayCloseButton: Bool,
        externalExceptions: [WebDomainException],
        inAppExceptions: [WebDomainException],
        openExternalBrowser: Bool
    ) {
        self.displayCloseButton = displayCloseButton
        self.externalExceptions = externalExceptions
        self.inAppExceptions = inAppExceptions
        self.openExternalBrowser = openExternalBrowser
    }
}

