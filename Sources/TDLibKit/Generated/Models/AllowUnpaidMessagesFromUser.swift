//
//  AllowUnpaidMessagesFromUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Allows the specified user to send unpaid private messages to the current user by adding a rule to userPrivacySettingAllowUnpaidMessages
public struct AllowUnpaidMessagesFromUser: Codable, Equatable, Hashable {

    /// Pass true to refund the user previously paid messages
    public let refundPayments: Bool?

    /// Identifier of the user
    public let userId: Int64?


    public init(
        refundPayments: Bool?,
        userId: Int64?
    ) {
        self.refundPayments = refundPayments
        self.userId = userId
    }
}

