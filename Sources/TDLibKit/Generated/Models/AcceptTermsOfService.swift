//
//  AcceptTermsOfService.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-ab8d769f
//  https://github.com/tdlib/td/tree/ab8d769f
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

