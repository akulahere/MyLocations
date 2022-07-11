//
//  File.swift
//  MyLocations
//
//  Created by Dmytro Akulinin on 06.07.2022.
//

import Foundation
func afterDelay(_ seconds: Double, run: @escaping() -> Void) {
  DispatchQueue.main.asyncAfter(
    deadline: .now() + seconds,
    execute: run)
}

let applicationDocumentsDirectory: URL = {
  let paths = FileManager.default.urls(
    for: .documentDirectory,
    in: .userDomainMask)
  return paths[0]
}()

let dataSaveFailedNotification = Notification.Name(
  rawValue: "DataSaveFailedNotification")

func fatalCoreDataError(_ error: Error) {
  print("*** Fatal error: \(error)")
  NotificationCenter.default.post(
    name: dataSaveFailedNotification,
    object: nil)
}
