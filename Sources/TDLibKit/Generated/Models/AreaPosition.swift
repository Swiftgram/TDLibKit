//
//  AreaPosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Describes position of a rectangle area on a story media or a TON wallet card
public struct AreaPosition: Codable, Equatable, Hashable {

    /// The radius of the rectangle corner rounding, as a percentage of the media or the card width
    public let cornerRadiusPercentage: Double

    /// The height of the rectangle, as a percentage of the media or the card height
    public let heightPercentage: Double

    /// Clockwise rotation angle of the rectangle, in degrees; 0-360
    public let rotationAngle: Double

    /// The width of the rectangle, as a percentage of the media or the card width
    public let widthPercentage: Double

    /// The abscissa of the rectangle's center, as a percentage of the media or the card width
    public let xPercentage: Double

    /// The ordinate of the rectangle's center, as a percentage of the media or the card height
    public let yPercentage: Double


    public init(
        cornerRadiusPercentage: Double,
        heightPercentage: Double,
        rotationAngle: Double,
        widthPercentage: Double,
        xPercentage: Double,
        yPercentage: Double
    ) {
        self.cornerRadiusPercentage = cornerRadiusPercentage
        self.heightPercentage = heightPercentage
        self.rotationAngle = rotationAngle
        self.widthPercentage = widthPercentage
        self.xPercentage = xPercentage
        self.yPercentage = yPercentage
    }
}

