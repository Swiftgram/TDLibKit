//
//  SendCallRating.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Sends a call rating
public struct SendCallRating: Codable, Equatable, Hashable {

    /// Call identifier
    public let callId: InputCall?

    /// An optional user comment if the rating is less than 5
    public let comment: String?

    /// List of the exact types of problems with the call, specified by the user
    public let problems: [CallProblem]?

    /// Call rating; 1-5
    public let rating: Int?


    public init(
        callId: InputCall?,
        comment: String?,
        problems: [CallProblem]?,
        rating: Int?
    ) {
        self.callId = callId
        self.comment = comment
        self.problems = problems
        self.rating = rating
    }
}

