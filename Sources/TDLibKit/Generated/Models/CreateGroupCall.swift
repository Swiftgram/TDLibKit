//
//  CreateGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-971684a3
//  https://github.com/tdlib/td/tree/971684a3
//

import Foundation


/// Creates a group call from a one-to-one call
public struct CreateGroupCall: Codable, Equatable, Hashable {

    /// Call identifier
    public let callId: Int?


    public init(callId: Int?) {
        self.callId = callId
    }
}

