//
//  OnRampPaymentSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
//

import Foundation


/// Describes a session for an on-ramp purchase
public struct OnRampPaymentSession: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the session will expire
    public let expirationDate: Int

    /// Identifier of the session
    public let sessionId: String

    /// HTTPS URL to be opened in a WebView to complete the purchase
    public let url: String


    public init(
        expirationDate: Int,
        sessionId: String,
        url: String
    ) {
        self.expirationDate = expirationDate
        self.sessionId = sessionId
        self.url = url
    }
}

