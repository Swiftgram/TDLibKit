//
//  VoiceNote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-9b4266c0
//  https://github.com/tdlib/td/tree/9b4266c0
//

import Foundation


/// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel
public struct VoiceNote: Codable, Equatable, Hashable {

    /// Duration of the voice note, in seconds; as defined by the sender
    public let duration: Int

    /// MIME type of the file; as defined by the sender
    public let mimeType: String

    /// Result of speech recognition in the voice note; may be null
    public let speechRecognitionResult: SpeechRecognitionResult?

    /// File containing the voice note
    public let voice: File

    /// A waveform representation of the voice note in 5-bit format
    public let waveform: Data


    public init(
        duration: Int,
        mimeType: String,
        speechRecognitionResult: SpeechRecognitionResult?,
        voice: File,
        waveform: Data
    ) {
        self.duration = duration
        self.mimeType = mimeType
        self.speechRecognitionResult = speechRecognitionResult
        self.voice = voice
        self.waveform = waveform
    }
}

