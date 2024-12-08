//
//  PMetodos.swift
//  CL2_Miguel
//
//  Created by Whiz on 7/12/24.
//

import UIKit

protocol PMetodos {
    func save(bean:Delito)->Int
    func findAll()->[DelitosEntity]
}
