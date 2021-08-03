//
//  AuthenticationCodeInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Information about the authentication code that was sent
public struct AuthenticationCodeInfo: Codable {

    /// Describes the way the next code will be sent to the user; may be null
    public let nextType: AuthenticationCodeType?

    /// A phone number that is being authenticated
    public let phoneNumber: String

    /// Timeout before the code can be re-sent, in seconds
    public let timeout: Int

    /// Describes the way the code was sent to the user
    public let type: AuthenticationCodeType


    public init(
        nextType: AuthenticationCodeType?,
        phoneNumber: String,
        timeout: Int,
        type: AuthenticationCodeType
    ) {
        self.nextType = nextType
        self.phoneNumber = phoneNumber
        self.timeout = timeout
        self.type = type
    }
}

