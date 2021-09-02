//
//  AcceptCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Accepts an incoming call
public struct AcceptCall: Codable {

    /// Call identifier
    public let callId: Int

    /// Description of the call protocols supported by the application
    public let `protocol`: CallProtocol


    public init(
        callId: Int,
        `protocol`: CallProtocol
    ) {
        self.callId = callId
        self.`protocol` = `protocol`
    }
}

