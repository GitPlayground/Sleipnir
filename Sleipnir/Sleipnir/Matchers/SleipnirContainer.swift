//
//  NSContainer.swift
//  Sleipnir
//
//  Created by Artur Termenji on 7/25/14.
//  Copyright (c) 2014 railsware. All rights reserved.
//

import Foundation

public protocol SleipnirContainer : SequenceType {
    
    var count: Int { get }
    
    func containsObject(anObject: AnyObject) -> Bool
    
}

public protocol SleipnirOrderedContainer : SleipnirContainer {
    
    func indexOfObject(object: AnyObject) -> Int
    
}

extension NSSet {

    public func containsObject(anObject: AnyObject) -> Bool {
        let nsArray : NSArray = NSArray(array: self.allObjects)
        return nsArray.containsObject(anObject)
    }

}

extension NSArray : SleipnirOrderedContainer { }
extension NSSet : SleipnirContainer { }