//
//  AcceptCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Accepts an incoming call
public struct AcceptCall: Codable, Equatable, Hashable {

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

