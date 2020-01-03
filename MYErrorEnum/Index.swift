//
//  Index.swift
//  MYErrorEnum
//
//  Created by Avisa Poshtkouhi on 3/1/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import Foundation
public protocol Index {
    var outLawIndex: Int { get }
}

extension Int: Index {
    public var outLawIndex: Int {
        return self
    }
}
