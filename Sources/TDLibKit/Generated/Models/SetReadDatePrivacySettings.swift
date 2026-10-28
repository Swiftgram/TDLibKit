//
//  SetReadDatePrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
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

