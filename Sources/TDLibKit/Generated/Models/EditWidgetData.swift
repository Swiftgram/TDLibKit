//
//  EditWidgetData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-6126ecae
//  https://github.com/tdlib/td/tree/6126ecae
//

import Foundation


/// Edits public data of a shared widget created by the bot; for bots only
public struct EditWidgetData: Codable, Equatable, Hashable {

    /// Time during which the public data can be cached, in seconds; 5-3600. Pass 0 to keep the current value, which is 30 by default
    public let cacheTime: Int?

    /// New public data of the widget
    public let publicData: String?

    /// Identifier of the shared widget
    public let widgetId: TdInt64?


    public init(
        cacheTime: Int?,
        publicData: String?,
        widgetId: TdInt64?
    ) {
        self.cacheTime = cacheTime
        self.publicData = publicData
        self.widgetId = widgetId
    }
}

