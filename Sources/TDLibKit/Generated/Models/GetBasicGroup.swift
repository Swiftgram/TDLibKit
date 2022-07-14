//
//  GetBasicGroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot
public struct GetBasicGroup: Codable, Equatable {

    /// Basic group identifier
    public let basicGroupId: Int64?


    public init(basicGroupId: Int64?) {
        self.basicGroupId = basicGroupId
    }
}

