//
//  HideSuggestedAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Hides a suggested action
public struct HideSuggestedAction: Codable {

    /// Suggested action to hide
    public let action: SuggestedAction?


    public init(action: SuggestedAction?) {
        self.action = action
    }
}

