//
//  main.swift
//  lesson5-OOP
//
//  Created by RAISA on 29.12.2020.
//  Copyright © 2020 RAISA. All rights reserved.
//

import Foundation

enum Size {
    case big, small
}
enum Color {
  case  red, green
}
enum EngineStart {
    case started, off
}
enum Windows {
    case open, closed
}
protocol Car {
    var brand: String {get}
    var year: Int {get}
    var color: Color {get set}
    var size: Size {get set}
    var engine: EngineStart {get set}
    var windows: Windows {get set}
}
extension Car {
 mutating func startCar (engine: EngineStart){
    self.engine = engine
}
mutating func windows (windows: Windows){
    self.windows = windows
}
   
}
class AnyCar: Car{
    
    var brand: String
    var year: Int
    var engine: EngineStart
    var color: Color
    var size: Size
    var windows: Windows
   
    init(year: Int, engine: EngineStart, color: Color, size: Size, brand: String, windows: Windows){
    self.brand = brand
    self.color = color
    self.size = size
    
    
    func printCar() {
  print(color, size, brand)
 }

    class SportCar: AnyCar, CustomStringConvertible{
        var description: String {
        return("you chose \(brand)")
       
    }

}
  
class TrunkCar: AnyCar {
 var carryingCapacity: Int
 init(carryingCapacity: Int, color: Color, size: Size, brand: String) {
self.carryingCapacity = carryingCapacity
    super.init(year: 2018, engine: .started, color: .green, size: .big, brand: "Kamaz", windows: .closed)
}

}

//var ferrari = SportCar(year: 2020, engine: .off, color: .red, size: .small, brand: "Ferrari", windows: .open)
var Kamaz = TrunkCar(carryingCapacity: 500, color: .red, size: .big, brand: "Kamaz")


}
}
