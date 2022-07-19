//
//  AssignGooglePlayTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Informs server about a Telegram Premium purchase through Google Play. For official applications only
public struct AssignGooglePlayTransaction: Codable, Equatable {

    /// Google Play purchase token
    public let purchaseToken: String?


    public init(purchaseToken: String?) {
        self.purchaseToken = purchaseToken
    }
}

