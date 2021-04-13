//
//  LogConfig.swift
//  PaceMaker
//
//  Created by 허예은 on 2021/04/13.
//

import Foundation

final public class PMLog {
    
    public class func debug(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        #if DEBUG
            let output = items.map { "\($0)" }.joined(separator: separator)
            print("🗣 [\(getCurrentTime())] PM - \(output)", terminator: terminator)
        #else
            print("🗣 [\(getCurrentTime())] PM - RELEASE MODE")
        #endif
    }
    
    public class func warning(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        #if DEBUG
            let output = items.map { "\($0)" }.joined(separator: separator)
            print("⚡️ [\(getCurrentTime())] PM - \(output)", terminator: terminator)
        #else
            print("⚡️ [\(getCurrentTime())] PM - RELEASE MODE")
        #endif
    }
    
    public class func error(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        #if DEBUG
            let output = items.map { "\($0)" }.joined(separator: separator)
            print("🚨 [\(getCurrentTime())] PM - \(output)", terminator: terminator)
        #else
            print("🚨 [\(getCurrentTime())] PM - RELEASE MODE")
        #endif
    }
    
    fileprivate class func getCurrentTime() -> String {
        let now = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        return dateFormatter.string(from: now as Date)
    }
}
