//
//  PassportRequiredElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
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

