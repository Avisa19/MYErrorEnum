//
//  Key.swift
//  MYErrorEnum
//
//  Created by Avisa Poshtkouhi on 3/1/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import Foundation

public protocol Key {
    var outLawKey: String { get }
}

extension String: Key {
    public var outLawKey: String {
        return self
    }
}
