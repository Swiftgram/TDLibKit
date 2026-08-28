//
//  JoinGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
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

