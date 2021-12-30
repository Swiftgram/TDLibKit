//
//  Backgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
//

import Foundation


/// Contains a list of backgrounds
public struct Backgrounds: Codable, Equatable {

    /// A list of backgrounds
    public let backgrounds: [Background]


    public init(backgrounds: [Background]) {
        self.backgrounds = backgrounds
    }
}

