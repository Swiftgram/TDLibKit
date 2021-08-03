//
//  AcceptTermsOfService.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Accepts Telegram terms of services
public struct AcceptTermsOfService: Codable {

    /// Terms of service identifier
    public let termsOfServiceId: String


    public init(termsOfServiceId: String) {
        self.termsOfServiceId = termsOfServiceId
    }
}

