//
//  AnimatedChatPhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Animated variant of a chat photo in MPEG4 format
public struct AnimatedChatPhoto: Codable {

    /// Information about the animation file
    public let file: File

    /// Animation width and height
    public let length: Int

    /// Timestamp of the frame, used as a static chat photo
    public let mainFrameTimestamp: Double


    public init(
        file: File,
        length: Int,
        mainFrameTimestamp: Double
    ) {
        self.file = file
        self.length = length
        self.mainFrameTimestamp = mainFrameTimestamp
    }
}
