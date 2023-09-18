//
//  SetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.18-daf48013
//  https://github.com/tdlib/td/tree/daf48013
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

