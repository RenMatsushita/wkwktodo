//
//  Task.swift
//  wkwktodo
//
//  Created by Ren Matsushita on 2020/03/14.
//  Copyright © 2020 Ren Matsushita. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var deadline: Date?
    @objc dynamic var isCompleted: Bool = false
    @objc dynamic var completedDate: Date?
    @objc dynamic var wp: Int = 0
    @objc dynamic var folder: Folder?
    let folders = LinkingObjects(fromType: Folder.self, property: "tasks")

    override static func primaryKey() -> String? {
        return "id"
        
    }
}
