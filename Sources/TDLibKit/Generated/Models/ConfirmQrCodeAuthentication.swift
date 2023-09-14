//
//  ConfirmQrCodeAuthentication.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.18-e79f5409
//  https://github.com/tdlib/td/tree/e79f5409
//

import Foundation


/// Confirms QR code authentication on another device. Returns created session on success
public struct ConfirmQrCodeAuthentication: Codable, Equatable, Hashable {

    /// A link from a QR code. The link must be scanned by the in-app camera
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

