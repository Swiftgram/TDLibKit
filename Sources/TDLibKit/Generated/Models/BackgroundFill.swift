//
//  BackgroundFill.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a fill of a background
public indirect enum BackgroundFill: Codable, Equatable, Hashable {

    /// Describes a solid fill of a background
    case backgroundFillSolid(BackgroundFillSolid)

    /// Describes a gradient fill of a background
    case backgroundFillGradient(BackgroundFillGradient)

    /// Describes a freeform gradient fill of a background
    case backgroundFillFreeformGradient(BackgroundFillFreeformGradient)


    private enum Kind: String, Codable {
        case backgroundFillSolid
        case backgroundFillGradient
        case backgroundFillFreeformGradient
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .backgroundFillSolid:
            let value = try BackgroundFillSolid(from: decoder)
            self = .backgroundFillSolid(value)
        case .backgroundFillGradient:
            let value = try BackgroundFillGradient(from: decoder)
            self = .backgroundFillGradient(value)
        case .backgroundFillFreeformGradient:
            let value = try BackgroundFillFreeformGradient(from: decoder)
            self = .backgroundFillFreeformGradient(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .backgroundFillSolid(let value):
            try container.encode(Kind.backgroundFillSolid, forKey: .type)
            try value.encode(to: encoder)
        case .backgroundFillGradient(let value):
            try container.encode(Kind.backgroundFillGradient, forKey: .type)
            try value.encode(to: encoder)
        case .backgroundFillFreeformGradient(let value):
            try container.encode(Kind.backgroundFillFreeformGradient, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes a solid fill of a background
public struct BackgroundFillSolid: Codable, Equatable, Hashable {

    /// A color of the background in the RGB24 format
    public let color: Int


    public init(color: Int) {
        self.color = color
    }
}

/// Describes a gradient fill of a background
public struct BackgroundFillGradient: Codable, Equatable, Hashable {

    /// A bottom color of the background in the RGB24 format
    public let bottomColor: Int

    /// Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45
    public let rotationAngle: Int

    /// A top color of the background in the RGB24 format
    public let topColor: Int


    public init(
        bottomColor: Int,
        rotationAngle: Int,
        topColor: Int
    ) {
        self.bottomColor = bottomColor
        self.rotationAngle = rotationAngle
        self.topColor = topColor
    }
}

/// Describes a freeform gradient fill of a background
public struct BackgroundFillFreeformGradient: Codable, Equatable, Hashable {

    /// A list of 3 or 4 colors of the freeform gradient in the RGB24 format
    public let colors: [Int]


    public init(colors: [Int]) {
        self.colors = colors
    }
}

