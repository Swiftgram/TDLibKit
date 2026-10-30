//
//  GetGuardBotWebAppUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Returns an HTTPS URL of a Web App of a guard bot to open after receiving chatJoinResultGuardBotApprovalRequired
public struct GetGuardBotWebAppUrl: Codable, Equatable, Hashable {

    /// Parameters to use to open the Web App
    public let parameters: WebAppOpenParameters?

    /// Unique identifier of the join request as received in chatJoinResultGuardBotApprovalRequired
    public let queryId: TdInt64?


    public init(
        parameters: WebAppOpenParameters?,
        queryId: TdInt64?
    ) {
        self.parameters = parameters
        self.queryId = queryId
    }
}

