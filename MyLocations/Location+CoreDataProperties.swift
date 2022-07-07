//
//  Location+CoreDataProperties.swift
//  MyLocations
//
//  Created by Dmytro Akulinin on 07.07.2022.
//
//

import CoreData
import CoreLocation
import Foundation

public extension Location {
  @nonobjc class func fetchRequest() -> NSFetchRequest<Location> {
    return NSFetchRequest<Location>(entityName: "Location")
  }

  @NSManaged var latitude: Double
  @NSManaged var longitude: Double
  @NSManaged var date: Date
  @NSManaged var locationDescription: String
  @NSManaged var category: String
  @NSManaged var placemark: CLPlacemark?
}

extension Location: Identifiable {}
