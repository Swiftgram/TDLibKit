//
//  CreateGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Creates a new group call that isn't bound to a chat
public struct CreateGroupCall: Codable, Equatable, Hashable {

    /// Parameters to join the call; pass null to only create a call link without joining the call
    public let joinParameters: GroupCallJoinParameters?


    public init(joinParameters: GroupCallJoinParameters?) {
        self.joinParameters = joinParameters
    }
}

