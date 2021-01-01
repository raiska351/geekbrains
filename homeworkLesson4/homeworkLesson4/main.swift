//
//  main.swift
//  homeworkLesson4
//
//  Created by RAISA on 28.12.2020.
//  Copyright © 2020 RAISA. All rights reserved.
//

import Foundation

 //Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.

//6. Вывести значения свойств экземпляров в консоль.
//version1

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


//enum Size {
//    case big, small
//}
//enum Color {
//  case  red, green
//}
//enum EngineStart {
//    case started, off
//}

//class Car {
//    var color: Color
  //  var size: Size
    //var carBrand: String
    //in/it(color: Color, size: Size, carBrand: String){
      //  self.carBrand = carBrand
        //self.color = color
        //self.size = size
        
        //}
    //func printCar() {
   //print(color, size, carBrand)
     //}
    
//}

//class SportCar: Car {
  //  var maxSpeed: Int
   // var engineState : EngineStart
   // init(maxSpeed: Int, color: Color, size: Size, carBrand: String, engineState: EngineStart) {
     //   self.maxSpeed = maxSpeed
     //   self.engineState = engineState
       // super.init(color: color, size: size, carBrand: carBrand)
//    }
  //  func engine() {
  //      engineState = .started
   //     print("Машина заведена!")
        
//    }
//}
  
//class TrunkCar: Car {
 //   var carryingCapacity: Int
 //   init(carryingCapacity: Int, color: Color, size: Size, carBrand: String) {
   //     self.carryingCapacity = carryingCapacity
   //     super.init(color: color, size: size, carBrand: carBrand)
  //  }
//


//}

    
//var car1 = SportCar(maxSpeed: 300, color: .green, size: .small, carBrand: "Ferrari", engineState: .started)
//var car2 = TrunkCar(carryingCapacity: 500, color: .red, size: .big, carBrand: "Kamaz")

//car1.printCar()
//print("Максимальная скорость \(car1.maxSpeed) км/час")
//print(car1.engine())
//car2.printCar()
//print("Грузоподъемность \(car2.carryingCapacity) кг")



//enum Color{
    //case red, green
//}
//struct Car {
  //  var color: Color
    //let km: Double
//}

//class Car_ref {
 //   var color: Color
  //  var km: Double
    
   // init(color: Color, km: Double){
     //   self.color = color
      //  self.km = km
    //}
  //  func printCar() {
  //      print(color, km)
  //  }
//}
//class AdvancedCar: Car_ref {
//    let doors: Int
 //   init(color: Color, km: Double, doors: Int){
        
     //   self.doors = doors
     //   super.init(color: color, km: km)
    //}
//}

//var toyota = Car(color: .green, km: 120)
//let toyota2 = toyota
//toyota.color = .red

//print(toyota)
//print(toyota2)
    
//var honda = Car_ref(color: .green, km: 120)
//let honda2 = honda
//honda.color = .red

//honda.printCar()
//honda2.printCar()
//let advCar = AdvancedCar(color: .red, km: 280, doors: 4)
