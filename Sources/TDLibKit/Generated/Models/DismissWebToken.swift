//
//  DismissWebToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-ab8d769f
//  https://github.com/tdlib/td/tree/ab8d769f
//

import Foundation


/// Dismissess a received web token without consumption; for official Telegram apps only
public struct DismissWebToken: Codable, Equatable, Hashable {

    /// The token to dismiss
    public let token: String?


    public init(token: String?) {
        self.token = token
    }
}

