//
//  RoomListViewModel.swift
//  Rooms
//
//  Created by Tân Nguyễn on 30/11/2022.
//

import Foundation
import CoreData
import UIKit

class RoomListViewModel: ObservableObject {
    let coreDM: CoreDataManager
    
    @Published var roomViewModel: [RoomViewModel] = []

    init() {
        coreDM = CoreDataManager.shared
    }
    
    func populateRoom() {
        DispatchQueue.main.async {
            self.roomViewModel = self.coreDM.getAllRooms().map(RoomViewModel.init)
        }
    }
    
}

struct RoomViewModel {
    let room: Room
    
    var roomId: ObjectIdentifier {
        return room.id
    }
    
    
    var name: String {
        return room.name
    }
    
    var length: String {
        return String(room.length)
    }
    
    var width: String {
        return  String(room.width)
    }
    
    var color: UIColor {
        return room.color ?? UIColor.clear
    }
    
    
}
