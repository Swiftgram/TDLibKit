//
//  PassportRequiredElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Contains a description of the required Telegram Passport element that was requested by a service
public struct PassportRequiredElement: Codable, Equatable {

    /// List of Telegram Passport elements any of which is enough to provide
    public let suitableElements: [PassportSuitableElement]


    public init(suitableElements: [PassportSuitableElement]) {
        self.suitableElements = suitableElements
    }
}

