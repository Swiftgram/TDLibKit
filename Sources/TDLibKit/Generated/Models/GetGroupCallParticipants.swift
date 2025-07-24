//
//  GetGroupCallParticipants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns information about participants of a non-joined group call that is not bound to a chat
public struct GetGroupCallParticipants: Codable, Equatable, Hashable {

    /// The group call which participants will be returned
    public let inputGroupCall: InputGroupCall?

    /// The maximum number of participants to return; must be positive
    public let limit: Int?


    public init(
        inputGroupCall: InputGroupCall?,
        limit: Int?
    ) {
        self.inputGroupCall = inputGroupCall
        self.limit = limit
    }
}

