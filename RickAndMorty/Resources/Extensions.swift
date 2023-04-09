//
//  Extensions.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 27/01/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}

extension UIDevice {
    
    static let isiPhone = UIDevice.current.userInterfaceIdiom == .phone
    
}
