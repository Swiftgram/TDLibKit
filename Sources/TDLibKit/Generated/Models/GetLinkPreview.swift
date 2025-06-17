//
//  GetLinkPreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-1e75ca0c
//  https://github.com/tdlib/td/tree/1e75ca0c
//

import Foundation


/// Returns a link preview by the text of a message. Do not call this function too often. Returns a 404 error if the text has no link preview
public struct GetLinkPreview: Codable, Equatable, Hashable {

    /// Options to be used for generation of the link preview; pass null to use default link preview options
    public let linkPreviewOptions: LinkPreviewOptions?

    /// Message text with formatting
    public let text: FormattedText?


    public init(
        linkPreviewOptions: LinkPreviewOptions?,
        text: FormattedText?
    ) {
        self.linkPreviewOptions = linkPreviewOptions
        self.text = text
    }
}

