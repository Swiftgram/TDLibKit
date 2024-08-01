//
//  GetBasicGroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Returns full information about a basic group by its identifier
public struct GetBasicGroupFullInfo: Codable, Equatable, Hashable {

    /// Basic group identifier
    public let basicGroupId: Int64?


    public init(basicGroupId: Int64?) {
        self.basicGroupId = basicGroupId
    }
}

