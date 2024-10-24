//
//  SetReadDatePrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-c684471b
//  https://github.com/tdlib/td/tree/c684471b
//

import Foundation


/// Changes privacy settings for message read date
public struct SetReadDatePrivacySettings: Codable, Equatable, Hashable {

    /// New settings
    public let settings: ReadDatePrivacySettings?


    public init(settings: ReadDatePrivacySettings?) {
        self.settings = settings
    }
}

