//
//  AssignGooglePlayTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
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

