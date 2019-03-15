//
//  Result.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Foundation

public enum Result<T, E: Swift.Error> {
    case success(T)
    case failure(E)
}
