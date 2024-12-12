//
//  GetAllPassportElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-d961806b
//  https://github.com/tdlib/td/tree/d961806b
//

import Foundation


/// Returns all available Telegram Passport elements
public struct GetAllPassportElements: Codable, Equatable, Hashable {

    /// The 2-step verification password of the current user
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

