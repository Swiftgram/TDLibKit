//
//  ChatJoinRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-97ec3eac
//  https://github.com/tdlib/td/tree/97ec3eac
//

import Foundation


/// Contains a list of requests to join a chat
public struct ChatJoinRequests: Codable, Equatable, Hashable {

    /// List of the requests
    public let requests: [ChatJoinRequest]

    /// Approximate total number of requests found
    public let totalCount: Int


    public init(
        requests: [ChatJoinRequest],
        totalCount: Int
    ) {
        self.requests = requests
        self.totalCount = totalCount
    }
}

