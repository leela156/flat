%dw 2.0
output application/json
fun flattenRecursion(arr: Array) = do {
 arr reduce ((item, acc = []) -> 
 item match {
 case x is Array -> acc ++ flattenRecursion(x)
 else -> acc << item
 }
 )
}
---
flattenRecursion(payload)




//here i am using Flatten function on a nested JSON Array to get into the single array and also recursion