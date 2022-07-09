//
//  FileWriter.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 22/09/2019.
//

import Foundation

/**
 Utility responsible for writing ```Implementation``` to disk.
 
 If file didn't change, writer skips it.
 */
open class FileWriter {
    
    /**
     Write implementations to disk.
     */
    open func write(implementations: [Implementation], verbose: Bool) throws {
        try self.createRequiredFolders(forImplementations: implementations, verbose: verbose)
        
        try implementations.forEach { (implementation: Implementation) in
            try self.write(
                file: implementation.sourceCode,
                filePath: implementation.filePath,
                verbose: verbose
            )
        }
    }
    
}

private extension FileWriter {
    
    func createRequiredFolders(
        forImplementations implementations: [Implementation],
        verbose: Bool
    ) throws {
        let fileManager: FileManager = FileManager.default
        try implementations.forEach { (implementation: Implementation) in
            let directoryUrl = URL(fileURLWithPath: implementation.filePath).deletingLastPathComponent()
            
            guard !fileManager.fileExists(atPath: directoryUrl.path) else { return }
            
            if verbose {
                Log.v("Creating folder: \(directoryUrl.path)")
            }
            
            try fileManager.createDirectory(
                at: directoryUrl,
                withIntermediateDirectories: true,
                attributes: nil
            )
        }
    }
    
    func write(file: String, filePath: String, verbose: Bool) throws {
        let existingFile = try? String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
        if let existingFile: String = existingFile, existingFile == file {
            if verbose {
                Log.v("File \(filePath) didn't change, skipping...")
            }
            return
        }
        
        if verbose {
            Log.v("Writing file: \(filePath)")
        }
        
        try file.write(toFile: filePath, atomically: false, encoding: String.Encoding.utf8)
    }
    
}
