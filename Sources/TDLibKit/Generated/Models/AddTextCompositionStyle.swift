//
//  AddTextCompositionStyle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Adds a custom text composition style to the list of styles used by the user. May return an error with a message "TONES_SAVED_TOO_MANY" if the maximum number of added custom styles getOption("added_text_composition_style_count_max") has been reached
public struct AddTextCompositionStyle: Codable, Equatable, Hashable {

    /// Name of the style
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

