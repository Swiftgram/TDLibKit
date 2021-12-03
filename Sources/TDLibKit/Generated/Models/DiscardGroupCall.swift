//
//  DiscardGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-8d7bda00
//  https://github.com/tdlib/td/tree/8d7bda00
//

import Foundation


/// Discards a group call. Requires groupCall.can_be_managed
public struct DiscardGroupCall: Codable, Equatable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

