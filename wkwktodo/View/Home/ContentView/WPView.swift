//
//  WPView.swift
//  wkwktodo
//
//  Created by Ren Matsushita on 2020/04/08.
//  Copyright © 2020 Ren Matsushita. All rights reserved.
//

import UIKit

class WPView: UIView, ReusableViewType, BackingViewMaker {
    typealias View = WPView
    @IBOutlet private weak var wpLabel: UILabel!
    
    func prepareForReuse() {
        print("prepareForReuse")
    }
    
    func configure(wp: Int) {
        wpLabel.text = String(wp)
    }
    
    static func makeBackedView() -> WPView {
        guard let wpView = R.nib.wpView(owner: self) as? WPView else { return WPView() }
        return wpView
    }
}
