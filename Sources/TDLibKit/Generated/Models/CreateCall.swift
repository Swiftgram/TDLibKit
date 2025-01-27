//
//  CreateCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Creates a new call
public struct CreateCall: Codable, Equatable, Hashable {

    /// Identifier of the group call to which the user will be added after exchanging private key via the call; pass 0 if none; currently, ignored
    public let groupCallId: Int?

    /// Pass true to create a video call
    public let isVideo: Bool?

    /// The call protocols supported by the application
    public let `protocol`: CallProtocol?

    /// Identifier of the user to be called
    public let userId: Int64?


    public init(
        groupCallId: Int?,
        isVideo: Bool?,
        `protocol`: CallProtocol?,
        userId: Int64?
    ) {
        self.groupCallId = groupCallId
        self.isVideo = isVideo
        self.`protocol` = `protocol`
        self.userId = userId
    }
}

