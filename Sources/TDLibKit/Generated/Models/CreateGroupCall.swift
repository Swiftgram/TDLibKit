//
//  CreateGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Creates a new group call that isn't bound to a chat
public struct CreateGroupCall: Codable, Equatable, Hashable {

    /// Parameters to join the call; pass null to only create call link without joining the call
    public let joinParameters: GroupCallJoinParameters?


    public init(joinParameters: GroupCallJoinParameters?) {
        self.joinParameters = joinParameters
    }
}

