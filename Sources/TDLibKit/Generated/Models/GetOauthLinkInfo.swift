//
//  GetOauthLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Returns information about an OAuth deep link. Use checkOauthRequestMatchCode, acceptOauthRequest or declineOauthRequest to process the link
public struct GetOauthLinkInfo: Codable, Equatable, Hashable {

    /// Origin of the OAuth request if the request was received from the in-app browser; pass an empty string otherwise
    public let inAppOrigin: String?

    /// URL of the link
    public let url: String?


    public init(
        inAppOrigin: String?,
        url: String?
    ) {
        self.inAppOrigin = inAppOrigin
        self.url = url
    }
}

