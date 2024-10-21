//
//  UserPrivacySettingRules.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed
public struct UserPrivacySettingRules: Codable, Equatable, Hashable {

    /// A list of rules
    public let rules: [UserPrivacySettingRule]


    public init(rules: [UserPrivacySettingRule]) {
        self.rules = rules
    }
}

