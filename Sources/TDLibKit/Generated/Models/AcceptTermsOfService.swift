//
//  AcceptTermsOfService.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Accepts Telegram terms of services
public struct AcceptTermsOfService: Codable, Equatable, Hashable {

    /// Terms of service identifier
    public let termsOfServiceId: String?


    public init(termsOfServiceId: String?) {
        self.termsOfServiceId = termsOfServiceId
    }
}

