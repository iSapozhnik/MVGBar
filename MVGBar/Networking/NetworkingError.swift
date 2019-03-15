//
//  NetworkingError.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Foundation

public struct NetworkingError: Error {
    public let error: Error
    
    public init(error: Error) {
        self.error = error
    }
}
