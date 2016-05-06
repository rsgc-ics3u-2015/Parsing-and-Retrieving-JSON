/*:
 [Previous](@previous)
 # Parsing a JSON String
 */
import Foundation

// Create the string
var example : String = "{ \"names\" : ["
example += "\"Gilbert\","
example += "\"Alex\","
example += "\"Mark\""
example += "]}"
/*:
 Now create an NSData object.
 
 NOTE: A what? This is the data type expected by NSJSONSerialization.
 All we are doing is converting the information we've put into the string into another data type; specifically, the data type required by the NSJSONSerialization class.
 */
let JSONData = example.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
/*:
 Next we parse the string. Try running this code.
 */
do {
    let json = try NSJSONSerialization.JSONObjectWithData(JSONData, options: []) as! [String: AnyObject]
    if let names = json["names"] as? [String] {
        print(names)
    }
} catch let error as NSError {
    print("Failed to load: \(error.localizedDescription)")
}
/*:
 Hold the Option key down on your keyboard, and click on the *names* variable. What data type is it?
 
 And that's that! Just kidding. Let's break down what is happening here on the next page.
 
 [Next](@next)
 */
