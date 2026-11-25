//
//  GetBasicGroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns information about a basic group by its identifier. This is an offline method if the current user is not a bot
public struct GetBasicGroup: Codable, Equatable, Hashable {

    /// Basic group identifier
    public let basicGroupId: Int64?


    public init(basicGroupId: Int64?) {
        self.basicGroupId = basicGroupId
    }
}

