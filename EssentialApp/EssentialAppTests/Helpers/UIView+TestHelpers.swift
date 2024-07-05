//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Koushik A N on 05/07/24.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
