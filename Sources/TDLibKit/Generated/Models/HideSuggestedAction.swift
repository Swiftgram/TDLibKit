//
//  HideSuggestedAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Hides a suggested action
public struct HideSuggestedAction: Codable, Equatable, Hashable {

    /// Suggested action to hide
    public let action: SuggestedAction?


    public init(action: SuggestedAction?) {
        self.action = action
    }
}

