/*:
 [Previous](@previous)
 
 # Building a JSON String
 
 Note that, eventually, we will retrieve JSON strings directly from servers on the Internet.
 
 For now, let's manually create a string that contains JSON that we can then parse using **NSJSONSerialization**.
 
    { "names" : [
                "Gilbert",
                "Alex",
                "Mark"
    ]}

 Let's define this string. Run the code below.
 */
import Foundation

// Create the string.
// Note that quotes must be escaped with a backslash. (What happens if you remove a backslash?)
var example : String = "{ \"names\" : ["
example += "\"Gilbert\","
example += "\"Alex\","
example += "\"Mark\""
example += "]}"
//: [Next](@next)
