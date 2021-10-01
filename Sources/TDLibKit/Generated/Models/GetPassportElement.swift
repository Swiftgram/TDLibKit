//
//  GetPassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Returns one of the available Telegram Passport elements
public struct GetPassportElement: Codable {

    /// Password of the current user
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

