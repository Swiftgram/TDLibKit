//
//  AcceptTermsOfService.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
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
