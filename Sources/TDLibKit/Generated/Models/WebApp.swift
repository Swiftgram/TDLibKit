//
//  WebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-328b8649
//  https://github.com/tdlib/td/tree/328b8649
//

import Foundation


/// Describes a Web App. Use getInternalLink with internalLinkTypeWebApp to share the Web App
public struct WebApp: Codable, Equatable {

    /// Web App animation; may be null
    public let animation: Animation?

    public let description: String

    /// Web App photo
    public let photo: Photo

    /// Web App short name
    public let shortName: String

    /// Web App title
    public let title: String


    public init(
        animation: Animation?,
        description: String,
        photo: Photo,
        shortName: String,
        title: String
    ) {
        self.animation = animation
        self.description = description
        self.photo = photo
        self.shortName = shortName
        self.title = title
    }
}

