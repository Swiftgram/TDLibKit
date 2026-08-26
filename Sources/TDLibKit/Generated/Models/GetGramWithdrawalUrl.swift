//
//  GetGramWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Returns a URL for TON Gram withdrawal from the current user's account. The user must have at least 10 Grams to withdraw and can withdraw up to 100000 Grams in one transaction
public struct GetGramWithdrawalUrl: Codable, Equatable, Hashable {

    /// The 2-step verification password of the current user
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

