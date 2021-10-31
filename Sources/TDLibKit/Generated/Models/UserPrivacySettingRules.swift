//
//  UserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed
public struct UserPrivacySettingRules: Codable {

    /// A list of rules
    public let rules: [UserPrivacySettingRule]


    public init(rules: [UserPrivacySettingRule]) {
        self.rules = rules
    }
}

