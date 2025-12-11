//
//  ToggleSupergroupHasAutomaticTranslation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Toggles whether messages are automatically translated in the channel chat; requires can_change_info administrator right in the channel. The chat must have at least chatBoostFeatures.min_automatic_translation_boost_level boost level to enable automatic translation
public struct ToggleSupergroupHasAutomaticTranslation: Codable, Equatable, Hashable {

    /// The new value of has_automatic_translation
    public let hasAutomaticTranslation: Bool?

    /// The identifier of the channel
    public let supergroupId: Int64?


    public init(
        hasAutomaticTranslation: Bool?,
        supergroupId: Int64?
    ) {
        self.hasAutomaticTranslation = hasAutomaticTranslation
        self.supergroupId = supergroupId
    }
}

