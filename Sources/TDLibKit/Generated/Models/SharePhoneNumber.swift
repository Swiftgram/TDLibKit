//
//  SharePhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber
public struct SharePhoneNumber: Codable, Equatable, Hashable {

    /// Identifier of the user with whom to share the phone number. The user must be a mutual contact
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

