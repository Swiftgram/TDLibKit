//
//  GiftBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes background of a gift
public struct GiftBackground: Codable, Equatable, Hashable {

    /// Center color in RGB format
    public let centerColor: Int

    /// Edge color in RGB format
    public let edgeColor: Int

    /// Text color in RGB format
    public let textColor: Int


    public init(
        centerColor: Int,
        edgeColor: Int,
        textColor: Int
    ) {
        self.centerColor = centerColor
        self.edgeColor = edgeColor
        self.textColor = textColor
    }
}

