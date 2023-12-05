//
//  GetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Returns the current privacy settings
public struct GetUserPrivacySettingRules: Codable, Equatable, Hashable {

    /// The privacy setting
    public let setting: UserPrivacySetting?


    public init(setting: UserPrivacySetting?) {
        self.setting = setting
    }
}

