//
//  GetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Returns the current privacy settings
public struct GetUserPrivacySettingRules: Codable {

    /// The privacy setting
    public let setting: UserPrivacySetting


    public init(setting: UserPrivacySetting) {
        self.setting = setting
    }
}

