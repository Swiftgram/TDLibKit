//
//  GetBusinessFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.27-d7203eb7
//  https://github.com/tdlib/td/tree/d7203eb7
//

import Foundation


/// Returns information about features, available to Business users
public struct GetBusinessFeatures: Codable, Equatable, Hashable {

    /// Source of the request; pass null if the method is called from settings or some non-standard source
    public let source: BusinessFeature?


    public init(source: BusinessFeature?) {
        self.source = source
    }
}

