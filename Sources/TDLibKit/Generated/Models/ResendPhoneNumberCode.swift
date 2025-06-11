//
//  ResendPhoneNumberCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Resends the authentication code sent to a phone number. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed
public struct ResendPhoneNumberCode: Codable, Equatable, Hashable {

    /// Reason of code resending; pass null if unknown
    public let reason: ResendCodeReason?


    public init(reason: ResendCodeReason?) {
        self.reason = reason
    }
}

