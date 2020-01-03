

import Foundation
public enum OutLawError: Error, CustomStringConvertible {
    case typeMisMatch(expected: Any, actual: Any)
    case keyNotFound(key: Key)
    case nulValueWithKey(key: Key)
    case typeMisMatchWithKey(key: Key, expected: Any, actual: Any)
    case indexNotFound(index: Index)
    case nulValueWithIndex(index: Index)
    case typeMisMatchWithIndex(index: Index, expected: Any, actual: Any)
    
    public var description: String {
        switch self {
        case let .typeMisMatch(expected, actual):
            return "Type mismatch, Expected `\(expected)` Got `\(actual)`"
        case let .keyNotFound(key):
            return "Key not found: `\(key.outLawKey)`"
        case let .nulValueWithKey(key):
            return "Null value found for key: `\(key.outLawKey)`"
        case let .typeMisMatchWithKey(key, expected, actual):
            return "Type mismatch. Expected `\(expected)` for key: `\(key.outLawKey)`. Got `\(actual)`"
        case let .indexNotFound(index):
            return "Index not found: `\(index.outLawIndex)`"
        case let .nulValueWithIndex(index):
            return "Null value found for index: `\(index.outLawIndex)`"
        case let .typeMisMatchWithIndex(index, expected, actual):
            return "Type mismatch, Expected `\(expected)` for index: `\(index.outLawIndex)`. Got `\(actual)`"
        }
    }
}
