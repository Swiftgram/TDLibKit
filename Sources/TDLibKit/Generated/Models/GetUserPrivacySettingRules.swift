//
//  GetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
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

