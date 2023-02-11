//
//  SharePhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-6ba394fc
//  https://github.com/tdlib/td/tree/6ba394fc
//

import Foundation


/// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber
public struct SharePhoneNumber: Codable, Equatable {

    /// Identifier of the user with whom to share the phone number. The user must be a mutual contact
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

