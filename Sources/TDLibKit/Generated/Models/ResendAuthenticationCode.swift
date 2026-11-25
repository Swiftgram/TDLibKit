//
//  ResendAuthenticationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, authorization_state.code_info.next_type is not null, and the server-specified timeout has passed, or when the current authorization state is authorizationStateWaitEmailCode
public struct ResendAuthenticationCode: Codable, Equatable, Hashable {

    /// Reason for code resending; pass null if unknown
    public let reason: ResendCodeReason?


    public init(reason: ResendCodeReason?) {
        self.reason = reason
    }
}

