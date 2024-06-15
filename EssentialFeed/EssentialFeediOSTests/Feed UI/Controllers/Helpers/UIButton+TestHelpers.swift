//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Koushik A N on 15/06/24.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
