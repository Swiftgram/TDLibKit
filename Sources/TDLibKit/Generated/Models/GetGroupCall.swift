//
//  GetGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-1cace9e6
//  https://github.com/tdlib/td/tree/1cace9e6
//

import Foundation


/// Returns information about a group call
public struct GetGroupCall: Codable, Equatable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

