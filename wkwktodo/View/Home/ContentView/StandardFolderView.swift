//
//  StandardFolderView.swift
//  wkwktodo
//
//  Created by Ren Matsushita on 2020/04/08.
//  Copyright © 2020 Ren Matsushita. All rights reserved.
//

import UIKit

class StandardFolderView: UIView {
    typealias View = StandardFolderView
    @IBOutlet private weak var logoView: UIView!
    @IBOutlet private weak var taskCountLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
        logoView.clipsToBounds = true
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        logoView.layer.cornerRadius = logoView.bounds.height * 0.5
    }
    
    func configure(taskCount: Int, title: String) {
        taskCountLabel.text = String(taskCount)
        titleLabel.text = title
    }
    
    func prepareForReuse() {
        print("prepareForReuse")
    }
    
    func configure() {
        
    }
    
    static func makeBackedView() -> StandardFolderView {
        guard let standardFolderView = R.nib.standardFolderView(owner: self) as? StandardFolderView else { return StandardFolderView() }
        return standardFolderView
    }
}
