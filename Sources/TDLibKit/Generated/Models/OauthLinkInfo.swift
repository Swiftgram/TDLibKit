//
//  OauthLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Information about the OAuth authorization
public struct OauthLinkInfo: Codable, Equatable, Hashable {

    /// User identifier of a bot linked with the website
    public let botUserId: Int64

    /// The version of a browser used for the authorization
    public let browser: String

    /// Hex-encoded public X25519 key of the dApp; may be empty if TON wallet access wasn't requested
    public let dappClientId: String

    /// A domain of the URL
    public let domain: String

    /// True, if the authorization originates from an application
    public let fromApp: Bool

    /// IP address from which the authorization is performed, in human-readable format
    public let ipAddress: String

    /// Human-readable description of a country and a region from which the authorization is performed, based on the IP address
    public let location: String

    /// True, if code matching dialog must be shown first and checkOauthRequestMatchCode must be called before acceptOauthRequest. Otherwise, checkOauthRequestMatchCode must not be called
    public let matchCodeFirst: Bool

    /// The list of codes to match; may be empty if irrelevant
    public let matchCodes: [String]

    /// Operating system the browser is running on
    public let platform: String

    /// True, if the user must be asked for the permission to share their phone number
    public let requestPhoneNumberAccess: Bool

    /// True, if access to the user's TON wallet is requested by the app. If true and the user agrees to give access, then use createTonConnectSession with dapp_client_id and ton_connect_manifest_url to create the TON Connect session, then setTonConnectSessionWalletClientId, then create a tonWalletOwnershipProof for the given domain with the payload ton_proof_payload, and then pass all data to acceptOauthRequest in the parameter ton_connect_connect_data
    public let requestTonWalletAccess: Bool

    /// True, if the user must be asked for the permission to the bot to send them messages
    public let requestWriteAccess: Bool

    /// URL of the TON Connect manifest of the dApp; may be empty if TON wallet access wasn't requested
    public let tonConnectManifestUrl: String

    /// Payload for TON wallet ownership proof; may be empty if TON wallet access wasn't requested
    public let tonProofPayload: String

    /// An HTTP URL where the user authorizes
    public let url: String

    /// Identifier of the user for which the link was generated; may be 0 if unknown. The corresponding user may be unknown. If the user is logged in the application, then they must be chosen for authorization by default
    public let userId: Int64

    /// Verified name of the application; if empty, then "Unverified App" must be shown instead
    public let verifiedAppName: String


    public init(
        botUserId: Int64,
        browser: String,
        dappClientId: String,
        domain: String,
        fromApp: Bool,
        ipAddress: String,
        location: String,
        matchCodeFirst: Bool,
        matchCodes: [String],
        platform: String,
        requestPhoneNumberAccess: Bool,
        requestTonWalletAccess: Bool,
        requestWriteAccess: Bool,
        tonConnectManifestUrl: String,
        tonProofPayload: String,
        url: String,
        userId: Int64,
        verifiedAppName: String
    ) {
        self.botUserId = botUserId
        self.browser = browser
        self.dappClientId = dappClientId
        self.domain = domain
        self.fromApp = fromApp
        self.ipAddress = ipAddress
        self.location = location
        self.matchCodeFirst = matchCodeFirst
        self.matchCodes = matchCodes
        self.platform = platform
        self.requestPhoneNumberAccess = requestPhoneNumberAccess
        self.requestTonWalletAccess = requestTonWalletAccess
        self.requestWriteAccess = requestWriteAccess
        self.tonConnectManifestUrl = tonConnectManifestUrl
        self.tonProofPayload = tonProofPayload
        self.url = url
        self.userId = userId
        self.verifiedAppName = verifiedAppName
    }
}

