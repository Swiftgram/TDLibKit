//
//  HideSuggestedAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
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

