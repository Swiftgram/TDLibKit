//
//  GetUserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
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

