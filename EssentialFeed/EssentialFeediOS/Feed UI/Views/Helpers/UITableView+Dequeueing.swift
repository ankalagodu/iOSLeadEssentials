//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Koushik A N on 15/06/24.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
