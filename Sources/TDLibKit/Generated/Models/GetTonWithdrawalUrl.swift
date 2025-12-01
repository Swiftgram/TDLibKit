//
//  GetTonWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Returns a URL for Toncoin withdrawal from the current user's account. The user must have at least 10 toncoins to withdraw and can withdraw up to 100000 Toncoins in one transaction
public struct GetTonWithdrawalUrl: Codable, Equatable, Hashable {

    /// The 2-step verification password of the current user
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

