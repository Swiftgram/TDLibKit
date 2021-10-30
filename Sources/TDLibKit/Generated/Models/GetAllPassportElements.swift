//
//  GetAllPassportElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-377bd189
//  https://github.com/tdlib/td/tree/377bd189
//

import Foundation


/// Returns all available Telegram Passport elements
public struct GetAllPassportElements: Codable {

    /// Password of the current user
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

