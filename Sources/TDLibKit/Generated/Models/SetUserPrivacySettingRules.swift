//
//  SetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Changes user privacy settings
public struct SetUserPrivacySettingRules: Codable {

    /// The new privacy rules
    public let rules: UserPrivacySettingRules

    /// The privacy setting
    public let setting: UserPrivacySetting


    public init(
        rules: UserPrivacySettingRules,
        setting: UserPrivacySetting
    ) {
        self.rules = rules
        self.setting = setting
    }
}
