//
//  GetPassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
//

import Foundation


/// Returns one of the available Telegram Passport elements
public struct GetPassportElement: Codable, Equatable, Hashable {

    /// The 2-step verification password of the current user
    public let password: String?

    /// Telegram Passport element type
    public let type: PassportElementType?


    public init(
        password: String?,
        type: PassportElementType?
    ) {
        self.password = password
        self.type = type
    }
}

