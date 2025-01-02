//
//  CreateGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
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

