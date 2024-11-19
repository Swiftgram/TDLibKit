//
//  ResetAuthenticationEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Resets the login email address. May return an error with a message "TASK_ALREADY_EXISTS" if reset is still pending. Works only when the current authorization state is authorizationStateWaitEmailCode and authorization_state.can_reset_email_address == true
public struct ResetAuthenticationEmailAddress: Codable, Equatable, Hashable {


    public init() {}
}

