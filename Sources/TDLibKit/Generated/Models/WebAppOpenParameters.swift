//
//  WebAppOpenParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Options to be used when a Web App is opened
public struct WebAppOpenParameters: Codable, Equatable, Hashable {

    /// Short name of the current application; 0-64 English letters, digits, and underscores
    public let applicationName: String

    /// The mode in which the Web App is opened; pass null to open in webAppOpenModeFullSize
    public let mode: WebAppOpenMode?

    /// Preferred Web App theme; pass null to use the default theme
    public let theme: ThemeParameters?


    public init(
        applicationName: String,
        mode: WebAppOpenMode?,
        theme: ThemeParameters?
    ) {
        self.applicationName = applicationName
        self.mode = mode
        self.theme = theme
    }
}

