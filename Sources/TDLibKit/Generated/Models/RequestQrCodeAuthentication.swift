//
//  RequestQrCodeAuthentication.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending authentication query and the current authorization state is authorizationStateWaitPremiumPurchase, authorizationStateWaitEmailAddress, authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
public struct RequestQrCodeAuthentication: Codable, Equatable, Hashable {

    /// List of user identifiers of other users currently using the application
    public let otherUserIds: [Int64]?


    public init(otherUserIds: [Int64]?) {
        self.otherUserIds = otherUserIds
    }
}

