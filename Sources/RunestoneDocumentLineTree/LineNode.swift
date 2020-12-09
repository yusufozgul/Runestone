//
//  File.swift
//  
//
//  Created by Simon Støvring on 08/12/2020.
//

import Foundation

protocol LineNode: class {
    var nodeTotalLength: Int { get }
    var nodeTotalCount: Int { get }
    var parent: Self? { get }
    var left: Self? { get }
    var right: Self? { get }
}

extension LineNode {
    var leftMost: Self {
        var result = self
        while let newResult = result.left {
            result = newResult
        }
        return result
    }
    var rightMost: Self {
        var result = self
        while let newResult = result.right {
            result = newResult
        }
        return result
    }
    var previous: Self {
        if let left = left {
            return left.rightMost
        } else {
            var oldNode = self
            var node = parent ?? self
            while let parent = node.parent, node.left === oldNode {
                oldNode = node
                node = parent
            }
            return node
        }
    }
    var next: Self {
        if let right = right {
            return right.leftMost
        } else {
            var oldNode = self
            var node = parent ?? self
            while let parent = node.parent, node.right === oldNode {
                oldNode = node
                node = parent
            }
            return node
        }
    }
}
