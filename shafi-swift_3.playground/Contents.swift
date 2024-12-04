import UIKit

// Base Class
class Computer {
   private var brand: String
   private var processor: String
   private  var ram: Int // Amount of RAM in GB

    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
   // getters
    func displaySpecs() {
        print("Brand: \(self.brand), Processor: \(self.processor), RAM: \(self.ram)GB")
    }
}

// Subclass Laptop
class Laptop: Computer {
   private var isTouchscreen: Bool
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }

    override func displaySpecs() {
        super.displaySpecs()
        print("Touchscreen: \(isTouchscreen ? "Yes" : "No")")
    }
}

// Subclass Desktop
class Desktop: Computer {
   private var hasDedicatedGPU: Bool

    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }

    override func displaySpecs() {
        super.displaySpecs()
        print("Dedicated GPU: \(hasDedicatedGPU ? "Yes" : "No")")
    }
}

// Subclass Server
class Server: Computer {
   private var rackUnits: Int

    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }

    override func displaySpecs() {
        super.displaySpecs()
        print("Rack Units: \(rackUnits)")
    }
}

// Test Code
var myLaptop = Laptop(brand: "Apple", processor: "M1", ram: 16, isTouchscreen: false)
var  myDesktop = Desktop(brand: "Dell", processor: "Intel i7", ram: 32, hasDedicatedGPU: true)
var myServer = Server(brand: "HP", processor: "Xeon", ram: 64, rackUnits: 4)

// Displaying the specifications
print("Laptop Specs:")
myLaptop.displaySpecs()
print("\nDesktop Specs:")
myDesktop.displaySpecs()
print("\nServer Specs:")
myServer.displaySpecs()

