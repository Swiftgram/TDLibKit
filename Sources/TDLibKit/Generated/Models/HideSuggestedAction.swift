//
//  HideSuggestedAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0147c97f
//  https://github.com/tdlib/td/tree/0147c97f
//

import Foundation


/// Hides a suggested action
public struct HideSuggestedAction: Codable, Equatable {

    /// Suggested action to hide
    public let action: SuggestedAction?


    public init(action: SuggestedAction?) {
        self.action = action
    }
}

