//
//  ColorReplacement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-858078d8
//  https://github.com/tdlib/td/tree/858078d8
//

import Foundation


/// Describes a color replacement for animated emoji
public struct ColorReplacement: Codable, Equatable {

    /// Replacement animated emoji color in the RGB24 format
    public let newColor: Int

    /// Original animated emoji color in the RGB24 format
    public let oldColor: Int


    public init(
        newColor: Int,
        oldColor: Int
    ) {
        self.newColor = newColor
        self.oldColor = oldColor
    }
}

