//
//  JsonMappingError.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Foundation

public struct JsonMappingError: Error {
    public let decodingError: DecodingError
    
    public init(decodingError: DecodingError) {
        self.decodingError = decodingError
    }
}
