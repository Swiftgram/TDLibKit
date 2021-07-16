//
//  RequestQrCodeAuthentication.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
public struct RequestQrCodeAuthentication: Codable {

    /// List of user identifiers of other users currently using the application
    public let otherUserIds: [Int]


    public init(otherUserIds: [Int]) {
        self.otherUserIds = otherUserIds
    }
}

