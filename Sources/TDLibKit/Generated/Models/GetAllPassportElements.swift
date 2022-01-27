//
//  GetAllPassportElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// Returns all available Telegram Passport elements
public struct GetAllPassportElements: Codable, Equatable {

    /// Password of the current user
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

