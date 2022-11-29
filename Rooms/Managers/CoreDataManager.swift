//
//  CoreDataManager.swift
//  Rooms
//
//  Created by Tân Nguyễn on 28/11/2022.
//

import Foundation
import CoreData

class CoreDataManager {
    static let shared = CoreDataManager()
    private let nSPersistentContainer: NSPersistentContainer
    
    private init() {
        self.nSPersistentContainer = NSPersistentContainer(name: "RoomModel")
        self.nSPersistentContainer.loadPersistentStores { descriptions, errors  in
            if let error = errors {
                fatalError("Load persistent fail \(error)")
            }
        }
    }
    
    public func save(room: Room) {
        
    }
}
