import UIKit

/*:
 # Unowned Optional Reference
 ![unowned-optional](unowned-optional.png)
 */

class Person {
   var name = "John Doe"
   var car: Car?

   deinit {
      print("person deinit")
   }
}

class Car {
   var model: String
   unowned var lessee: Person

   init(model: String, lessee: Person) {
      self.model = model
      self.lessee = lessee
   }

   deinit {
      print("car deinit")
   }
}

var person: Person? = Person()
var rentedCar: Car? = Car(model: "Porsche", lessee: person!)

person?.car = rentedCar

person = nil
rentedCar = nil


