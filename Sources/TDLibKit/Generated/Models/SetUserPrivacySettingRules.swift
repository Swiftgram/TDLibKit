//
//  SetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
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

