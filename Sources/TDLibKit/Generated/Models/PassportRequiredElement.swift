//
//  PassportRequiredElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Contains a description of the required Telegram Passport element that was requested by a service
public struct PassportRequiredElement: Codable, Equatable, Hashable {

    /// List of Telegram Passport elements any of which is enough to provide
    public let suitableElements: [PassportSuitableElement]


    public init(suitableElements: [PassportSuitableElement]) {
        self.suitableElements = suitableElements
    }
}

