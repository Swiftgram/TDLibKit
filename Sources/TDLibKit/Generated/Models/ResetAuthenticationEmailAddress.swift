//
//  ResetAuthenticationEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Resets the login email address. May return an error with a message "TASK_ALREADY_EXISTS" if the reset is still pending. Works only when the current authorization state is authorizationStateWaitEmailCode and authorization_state.email_address_reset_state != null
public struct ResetAuthenticationEmailAddress: Codable, Equatable, Hashable {


    public init() {}
}

