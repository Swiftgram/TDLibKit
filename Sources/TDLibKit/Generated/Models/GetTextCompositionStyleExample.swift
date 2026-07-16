//
//  GetTextCompositionStyleExample.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Returns an example of usage of a custom text composition style
public struct GetTextCompositionStyleExample: Codable, Equatable, Hashable {

    /// 0-based unique number of the requested example; must be non-negative and less than getOption("text_composition_style_example_count")
    public let exampleNumber: Int?

    /// Name of the style
    public let name: String?


    public init(
        exampleNumber: Int?,
        name: String?
    ) {
        self.exampleNumber = exampleNumber
        self.name = name
    }
}

