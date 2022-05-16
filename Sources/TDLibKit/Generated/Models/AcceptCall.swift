//
//  AcceptCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-b6c7da17
//  https://github.com/tdlib/td/tree/b6c7da17
//

import Foundation


/// Accepts an incoming call
public struct AcceptCall: Codable, Equatable {

    /// Call identifier
    public let callId: Int?

    /// The call protocols supported by the application
    public let `protocol`: CallProtocol?


    public init(
        callId: Int?,
        `protocol`: CallProtocol?
    ) {
        self.callId = callId
        self.`protocol` = `protocol`
    }
}

