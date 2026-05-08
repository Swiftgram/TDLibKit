//
//  GetTextCompositionStyleExample.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-49b3bcbb
//  https://github.com/tdlib/td/tree/49b3bcbb
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

