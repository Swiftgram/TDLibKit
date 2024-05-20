//
//  PageBlockRelatedArticle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a related article
public struct PageBlockRelatedArticle: Codable, Equatable, Hashable {

    /// Article author; may be empty
    public let author: String

    public let description: String

    /// Article photo; may be null
    public let photo: Photo?

    /// Point in time (Unix timestamp) when the article was published; 0 if unknown
    public let publishDate: Int

    /// Article title; may be empty
    public let title: String

    /// Related article URL
    public let url: String


    public init(
        author: String,
        description: String,
        photo: Photo?,
        publishDate: Int,
        title: String,
        url: String
    ) {
        self.author = author
        self.description = description
        self.photo = photo
        self.publishDate = publishDate
        self.title = title
        self.url = url
    }
}

