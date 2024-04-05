

import Foundation

struct Location {
    var x: Double
    var y: Double
}

func distance(from: Location, to: Location) -> Double {
    return sqrt((to.x - from.x) * (to.x - from.x) + (to.y - from.y) * (to.y - from.y))
}

let store1 = Location(x: 1.0, y: 2.0)
let store2 = Location(x: 5.0, y: 6.0)

let storeRange = 2.5

struct Customer {
    var name: String
    var email: String
    var phoneNumber: String
    var acceptedNewsletter: Bool
    var location: Location
}

var customers: [Customer] = [
    Customer(name: "Jane Doe", email: "jdoe@gmail.com", phoneNumber: "123-456-7890", acceptedNewsletter: true, location: Location(x: 1.5, y: 2.5)),
    Customer(name: "John Smith", email: "jsmith@gmail.com", phoneNumber: "234-567-8901", acceptedNewsletter: false, location: Location(x: 5.0, y: 6.5)),
    Customer(name: "Alice Johnson", email: "ajohnson@gmail.com", phoneNumber: "345-678-9012", acceptedNewsletter: true, location: Location(x: 2.0, y: 2.0)),
    Customer(name: "Mustafe ah", email: "mustah@gmail.com", phoneNumber: "456-789-0123", acceptedNewsletter: true, location: Location(x: 5.0, y: 7.0)),
    Customer(name: "Ali Mod", email: "ewhite@gmail.com", phoneNumber: "567-890-1234", acceptedNewsletter: false, location: Location(x: 1.0, y: 1.0)),
    Customer(name: "Leo Smith", email: "cblack@gmail.com", phoneNumber: "678-901-2345", acceptedNewsletter: true, location: Location(x: 3.0, y: 4.0)),
    Customer(name: "David Green", email: "dgreen@gmail.com", phoneNumber: "789-012-3456", acceptedNewsletter: false, location: Location(x: 1.0, y: 5.0)),
    Customer(name: "Grace Gray", email: "ggray@gmail.com", phoneNumber: "890-123-4567", acceptedNewsletter: true, location: Location(x: 1.5, y: 3.5)),
    Customer(name: "Frank Red", email: "fred@gmail.com", phoneNumber: "901-234-5678", acceptedNewsletter: true, location: Location(x: 1.0, y: 2.0)),
    Customer(name: "Mo Ali", email: "hblue@gmail.com", phoneNumber: "012-345-6789", acceptedNewsletter: false, location: Location(x: 0.5, y: 2.5))
]

func printCustomersWithinRange(storeLocation: Location, customers: [Customer]) {
    print("Customers within range of store at location ((storeLocation.x), (storeLocation.y)):")
    for c in customers {
        let customerDistance = distance(from: storeLocation, to: c.location)
        if customerDistance <= storeRange {
            print("Name: \(c.name) Email: \(c.email)")
        }
    }
}

printCustomersWithinRange(storeLocation: store1, customers: customers)

printCustomersWithinRange(storeLocation: store2, customers: customers)

