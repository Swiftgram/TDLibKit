//
//  AddTextCompositionStyle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-062f2605
//  https://github.com/tdlib/td/tree/062f2605
//

import Foundation


/// Adds a custom text composition style to the list of used by the user styles. May return an error with a message "TONES_SAVED_TOO_MANY" if the maximum number of added custom styles has been reached
public struct AddTextCompositionStyle: Codable, Equatable, Hashable {

    /// Name of the style
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

