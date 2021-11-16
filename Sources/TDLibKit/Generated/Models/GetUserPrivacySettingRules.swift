//
//  GetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Returns the current privacy settings
public struct GetUserPrivacySettingRules: Codable {

    /// The privacy setting
    public let setting: UserPrivacySetting?


    public init(setting: UserPrivacySetting?) {
        self.setting = setting
    }
}

