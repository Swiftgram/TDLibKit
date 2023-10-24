//
//  SetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-7152a5c2
//  https://github.com/tdlib/td/tree/7152a5c2
//

import Foundation


/// Changes user privacy settings
public struct SetUserPrivacySettingRules: Codable, Equatable, Hashable {

    /// The new privacy rules
    public let rules: UserPrivacySettingRules?

    /// The privacy setting
    public let setting: UserPrivacySetting?


    public init(
        rules: UserPrivacySettingRules?,
        setting: UserPrivacySetting?
    ) {
        self.rules = rules
        self.setting = setting
    }
}

