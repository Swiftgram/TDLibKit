//
//  GetExternalLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns information about an action to be done when the current user clicks an external link. Don't use this method for links from secret chats if link preview is disabled in secret chats, and use getLinkWebBrowserType directly
public struct GetExternalLinkInfo: Codable, Equatable, Hashable {

    /// The link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

