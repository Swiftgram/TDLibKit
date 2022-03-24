//
//  EndGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.2-ff014add
//  https://github.com/tdlib/td/tree/ff014add
//

import Foundation


/// Ends a group call. Requires groupCall.can_be_managed
public struct EndGroupCall: Codable, Equatable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

