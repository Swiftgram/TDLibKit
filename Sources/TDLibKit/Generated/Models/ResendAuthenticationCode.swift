//
//  ResendAuthenticationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-4d90c2a2
//  https://github.com/tdlib/td/tree/4d90c2a2
//

import Foundation


/// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed, or when the current authorization state is authorizationStateWaitEmailCode
public struct ResendAuthenticationCode: Codable, Equatable, Hashable {


    public init() {}
}

