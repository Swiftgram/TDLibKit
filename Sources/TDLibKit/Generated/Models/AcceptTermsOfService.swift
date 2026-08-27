//
//  AcceptTermsOfService.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Accepts Telegram terms of service
public struct AcceptTermsOfService: Codable, Equatable, Hashable {

    /// Terms of service identifier
    public let termsOfServiceId: String?


    public init(termsOfServiceId: String?) {
        self.termsOfServiceId = termsOfServiceId
    }
}

