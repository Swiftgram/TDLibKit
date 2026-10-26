//
//  AllowUnpaidMessagesFromUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
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

