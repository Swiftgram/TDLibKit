//
//  CreateCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Creates a new call
public struct CreateCall: Codable, Equatable, Hashable {

    /// Pass true to create a video call
    public let isVideo: Bool?

    /// The call protocols supported by the application
    public let `protocol`: CallProtocol?

    /// Identifier of the user to be called
    public let userId: Int64?


    public init(
        isVideo: Bool?,
        `protocol`: CallProtocol?,
        userId: Int64?
    ) {
        self.isVideo = isVideo
        self.`protocol` = `protocol`
        self.userId = userId
    }
}

