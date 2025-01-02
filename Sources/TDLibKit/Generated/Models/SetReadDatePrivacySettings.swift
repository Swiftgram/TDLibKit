//
//  SetReadDatePrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
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

