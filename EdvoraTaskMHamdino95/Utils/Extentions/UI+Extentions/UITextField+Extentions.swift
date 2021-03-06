//
//  UITextField+Extentions.swift
//  EdvoraTaskMHamdino95
//
//  Created by A One Way To Allah on 1/13/22.
//

import SwiftUI

extension TextField {
    
    public func secure(_ secure: Bool = true) -> TextField {
        if secure {
            var secureField = self
            withUnsafeMutablePointer(to: &secureField) { pointer in
                let offset = 32
                let valuePointer = UnsafeMutableRawPointer(mutating: pointer)
                    .assumingMemoryBound(to: Bool.self)
                    .advanced(by: offset)
                valuePointer.pointee = true
            }
            return secureField
        } else {
            return self
        }
    }
}
