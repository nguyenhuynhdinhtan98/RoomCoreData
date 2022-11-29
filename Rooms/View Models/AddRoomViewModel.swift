//
//  AddRoomViewModel.swift
//  Rooms
//
//  Created by Tân Nguyễn on 28/11/2022.
//

import Foundation
import SwiftUI


class AddRoomViewModel: ObservableObject {
    let coreDataManager: CoreDataManager
    
    var name: String = ""
    var length: String = ""
    var width: String = ""
    var color: Color = Color.clear
    
    init() {
        coreDataManager = CoreDataManager.shared
    }
    
    func save() {
        let room = Room(context: self.coreDataManager.nSPersistentContainer.viewContext)
        room.name = name
        room.color = UIColor(color)
        room.length = Double(length) ?? 0
        room.width = Double(width) ?? 0
        coreDataManager.save()
    }
}
