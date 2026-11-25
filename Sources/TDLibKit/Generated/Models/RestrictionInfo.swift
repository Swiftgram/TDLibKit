//
//  RestrictionInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains information about restrictions that must be applied to a chat or a message
public struct RestrictionInfo: Codable, Equatable, Hashable {

    /// True, if the media content of the messages must be hidden with an 18+ spoiler. Use the value of the option "can_ignore_sensitive_content_restrictions" to check whether the current user can ignore the restriction. If age verification parameters were received in updateAgeVerificationParameters, then the user must complete age verification to ignore the restriction. Set the option "ignore_sensitive_content_restrictions" to true if the user passes age verification
    public let hasSensitiveContent: Bool

    /// A human-readable description of the reason why access to the content must be restricted. If empty, then the content can be accessed, but may be hidden with an 18+ spoiler anyway
    public let restrictionReason: String


    public init(
        hasSensitiveContent: Bool,
        restrictionReason: String
    ) {
        self.hasSensitiveContent = hasSensitiveContent
        self.restrictionReason = restrictionReason
    }
}

