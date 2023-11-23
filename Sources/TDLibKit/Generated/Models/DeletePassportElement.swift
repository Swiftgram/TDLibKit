//
//  DeletePassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Deletes a Telegram Passport element
public struct DeletePassportElement: Codable, Equatable, Hashable {

    /// Element type
    public let type: PassportElementType?


    public init(type: PassportElementType?) {
        self.type = type
    }
}

