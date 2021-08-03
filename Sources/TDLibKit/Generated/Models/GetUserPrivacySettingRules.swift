//
//  GetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
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

