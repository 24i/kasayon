//
//  ReusableView.swift
//  Pods
//
//  Created by Erik van der Wal on 20/11/2016.
//
//

import UIKit

/// ReusableView can be used with any view that is reusable
public protocol ReusableView: class {
    static var reuseIdentifier: String { get }
}

public extension ReusableView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// A tableviewcell is reusable by default
extension UITableViewCell: ReusableView {}

// A collectionviewcell is reusable by default
extension UICollectionViewCell: ReusableView {}
