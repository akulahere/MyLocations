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
