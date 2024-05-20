//
//  GetMapThumbnailFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded
public struct GetMapThumbnailFile: Codable, Equatable, Hashable {

    /// Identifier of a chat in which the thumbnail will be shown. Use 0 if unknown
    public let chatId: Int64?

    /// Map height in pixels before applying scale; 16-1024
    public let height: Int?

    /// Location of the map center
    public let location: Location?

    /// Map scale; 1-3
    public let scale: Int?

    /// Map width in pixels before applying scale; 16-1024
    public let width: Int?

    /// Map zoom level; 13-20
    public let zoom: Int?


    public init(
        chatId: Int64?,
        height: Int?,
        location: Location?,
        scale: Int?,
        width: Int?,
        zoom: Int?
    ) {
        self.chatId = chatId
        self.height = height
        self.location = location
        self.scale = scale
        self.width = width
        self.zoom = zoom
    }
}

