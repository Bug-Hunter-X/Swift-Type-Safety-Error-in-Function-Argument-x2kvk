func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10, width: 5) // Correct usage

let lengthStr = "10"
let widthStr = "5"

if let length = Double(lengthStr), let width = Double(widthStr) {
    let area2 = calculateArea(length: length, width: width) 
    print(area2) //Correct usage after type conversion
}

//Alternative with error handling:
func calculateAreaWithStrings(length: String, width: String) -> Double? {
    guard let lengthDouble = Double(length), let widthDouble = Double(width) else {
        return nil // Handle the error appropriately
    }
    return lengthDouble * widthDouble
}

let area3 = calculateAreaWithStrings(length: "10", width: "5")
if let safeArea3 = area3 {
  print(safeArea3) //Correct usage after type conversion and handling error
} else {
  print("Error converting strings to doubles")
}