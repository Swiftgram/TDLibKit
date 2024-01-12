//
//  Backgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-4bafdc2b
//  https://github.com/tdlib/td/tree/4bafdc2b
//

import Foundation


/// Contains a list of backgrounds
public struct Backgrounds: Codable, Equatable, Hashable {

    /// A list of backgrounds
    public let backgrounds: [Background]


    public init(backgrounds: [Background]) {
        self.backgrounds = backgrounds
    }
}

