//
//  DeletePassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
//

import Foundation


/// Deletes a Telegram Passport element
public struct DeletePassportElement: Codable, Equatable {

    /// Element type
    public let type: PassportElementType?


    public init(type: PassportElementType?) {
        self.type = type
    }
}

