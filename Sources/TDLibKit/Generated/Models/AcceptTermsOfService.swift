//
//  AcceptTermsOfService.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Accepts Telegram terms of services
public struct AcceptTermsOfService: Codable, Equatable {

    /// Terms of service identifier
    public let termsOfServiceId: String?


    public init(termsOfServiceId: String?) {
        self.termsOfServiceId = termsOfServiceId
    }
}

