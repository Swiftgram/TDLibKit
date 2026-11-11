//
//  WidgetPublicData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
//

import Foundation


/// Contains public data of a widget
public struct WidgetPublicData: Codable, Equatable, Hashable {

    /// Public data of the widget
    public let data: String

    /// The number of seconds after which the public data can be polled again
    public let pollPeriod: Int


    public init(
        data: String,
        pollPeriod: Int
    ) {
        self.data = data
        self.pollPeriod = pollPeriod
    }
}

