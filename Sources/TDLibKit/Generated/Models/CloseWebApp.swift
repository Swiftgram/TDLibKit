//
//  CloseWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-4257a341
//  https://github.com/tdlib/td/tree/4257a341
//

import Foundation


/// Informs TDLib that a previously opened Web App was closed
public struct CloseWebApp: Codable, Equatable, Hashable {

    /// Identifier of Web App launch, received from openWebApp
    public let webAppLaunchId: TdInt64?


    public init(webAppLaunchId: TdInt64?) {
        self.webAppLaunchId = webAppLaunchId
    }
}

