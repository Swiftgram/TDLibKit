//
//  AcceptTermsOfService.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
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

