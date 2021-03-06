//
//  List.swift
//  wkwktodo
//
//  Created by Ren Matsushita on 2020/03/14.
//  Copyright © 2020 Ren Matsushita. All rights reserved.
//

import Foundation
import RealmSwift

class FolderObject: Object {
    @objc dynamic var id: String = UUID.init().uuidString
    @objc dynamic var title: String = ""
    @objc private dynamic var primaryColorRawValue: String = ""
    var primaryColor: FolderPrimaryColorType {
        get { return FolderPrimaryColorType(rawValue: primaryColorRawValue) ?? .red }
        set { primaryColorRawValue = newValue.rawValue }
    }
    @objc dynamic var order: Int = 0
    @objc dynamic var createdAt: Date = Date()
    let tasks = LinkingObjects(fromType: TaskObject.self, property: "folder")
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

enum FolderType: String {
    case today, all, original
}
