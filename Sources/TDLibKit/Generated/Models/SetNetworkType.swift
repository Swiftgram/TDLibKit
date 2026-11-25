//
//  SetNetworkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks, so it must be called whenever the network is changed, even if the network type remains the same. The network type is used to check whether the library can use the network at all and also for collecting detailed network data usage statistics
public struct SetNetworkType: Codable, Equatable, Hashable {

    /// The new network type; pass null to set the network type to networkTypeOther
    public let type: NetworkType?


    public init(type: NetworkType?) {
        self.type = type
    }
}

