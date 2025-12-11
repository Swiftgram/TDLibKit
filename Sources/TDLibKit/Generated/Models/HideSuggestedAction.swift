//
//  HideSuggestedAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
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

