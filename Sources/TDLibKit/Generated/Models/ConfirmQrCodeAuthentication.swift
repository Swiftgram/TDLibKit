//
//  ConfirmQrCodeAuthentication.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
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

