//
//  GetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
//

import Foundation


/// Returns the current privacy settings
public struct GetUserPrivacySettingRules: Codable, Equatable {

    /// The privacy setting
    public let setting: UserPrivacySetting?


    public init(setting: UserPrivacySetting?) {
        self.setting = setting
    }
}

