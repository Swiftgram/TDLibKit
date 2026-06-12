//
//  JoinGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Joins a regular group call that is not bound to a chat
public struct JoinGroupCall: Codable, Equatable, Hashable {

    /// The group call to join
    public let inputGroupCall: InputGroupCall?

    /// Parameters to join the call
    public let joinParameters: GroupCallJoinParameters?


    public init(
        inputGroupCall: InputGroupCall?,
        joinParameters: GroupCallJoinParameters?
    ) {
        self.inputGroupCall = inputGroupCall
        self.joinParameters = joinParameters
    }
}

