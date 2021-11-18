//
//  AuthenticationCodeInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// Information about the authentication code that was sent
public struct AuthenticationCodeInfo: Codable {

    /// The way the next code will be sent to the user; may be null
    public let nextType: AuthenticationCodeType?

    /// A phone number that is being authenticated
    public let phoneNumber: String

    /// Timeout before the code can be re-sent, in seconds
    public let timeout: Int

    /// The way the code was sent to the user
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

