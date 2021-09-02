//
//  CreateCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Creates a new call
public struct CreateCall: Codable {

    /// True, if a video call needs to be created
    public let isVideo: Bool

    /// Description of the call protocols supported by the application
    public let `protocol`: CallProtocol

    /// Identifier of the user to be called
    public let userId: Int


    public init(
        isVideo: Bool,
        `protocol`: CallProtocol,
        userId: Int
    ) {
        self.isVideo = isVideo
        self.`protocol` = `protocol`
        self.userId = userId
    }
}

