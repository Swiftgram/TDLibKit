//
//  StartLiveStoryResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Represents result of starting a live story
public indirect enum StartLiveStoryResult: Codable, Equatable, Hashable {

    /// The live story was successfully posted
    case startLiveStoryResultOk(StartLiveStoryResultOk)

    /// The live story failed to post with an error to be handled
    case startLiveStoryResultFail(StartLiveStoryResultFail)


    private enum Kind: String, Codable {
        case startLiveStoryResultOk
        case startLiveStoryResultFail
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .startLiveStoryResultOk:
            let value = try StartLiveStoryResultOk(from: decoder)
            self = .startLiveStoryResultOk(value)
        case .startLiveStoryResultFail:
            let value = try StartLiveStoryResultFail(from: decoder)
            self = .startLiveStoryResultFail(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .startLiveStoryResultOk(let value):
            try container.encode(Kind.startLiveStoryResultOk, forKey: .type)
            try value.encode(to: encoder)
        case .startLiveStoryResultFail(let value):
            try container.encode(Kind.startLiveStoryResultFail, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The live story was successfully posted
public struct StartLiveStoryResultOk: Codable, Equatable, Hashable {

    /// The live story
    public let story: Story


    public init(story: Story) {
        self.story = story
    }
}

/// The live story failed to post with an error to be handled
public struct StartLiveStoryResultFail: Codable, Equatable, Hashable {

    /// Type of the error; other error types may be returned as regular errors
    public let errorType: CanPostStoryResult


    public init(errorType: CanPostStoryResult) {
        self.errorType = errorType
    }
}

