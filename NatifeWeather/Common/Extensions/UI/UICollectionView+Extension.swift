//
//  UICollectionView+Extension.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 03.09.2022.
//

import UIKit

extension UICollectionView {
    
    func register<T: TypeIdentifiable>(_ cell: T.Type) where T: UICollectionViewCell {
        register(cell.nib, forCellWithReuseIdentifier: cell.typeName)
    }
    
    func register<T: TypeIdentifiable>(_ view: T.Type, _ kind: String) where T: UICollectionReusableView {
        register(view.nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: view.typeName)
    }
    
    func dequeueReusableCell<T>(indexPath: IndexPath) -> T where T: UICollectionViewCell, T: TypeIdentifiable {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.typeName, for: indexPath) as? T else {
            fatalError("Cell with \(T.typeName) identifier not registered")
        }
        return cell
    }
}

extension UICollectionView {
    
    func reloadSections(at index: Int, _ animated: Bool = false) {
        if animated {
            reloadSections(.init(arrayLiteral: index))
        } else {
            UIView.performWithoutAnimation {
                reloadSections(.init(arrayLiteral: index))
            }
        }
    }
}
