//: Playground - Map,Filter,Reduce,Chaining:

import UIKit

/*
 Map:
 Use map to loop over a collection and apply the same operation to each element in the collection. The map function returns an array containing the results of applying a mapping or transform function to each item
 */
print("Map:")
let arrData = [1000000,1000000000]
let word = arrData.map{ NumberFormatter.localizedString(from: $0 as NSNumber, number: .spellOut) }
print(word)

let dictData = ["key_1":1000000,"key_2":1000000000,"key_3":1000000000000]
print(dictData.map{key,value in NumberFormatter.localizedString(from: value as NSNumber, number: .spellOut)})

let setInMeters : Set = [2.0,4.0,6.0]
print(setInMeters.map{ meters in meters*3.2808})

/*
 Filter:
 Use filter to loop over a collection and return an Array containing only those elements that match an include condition.
 */
print("Filter:")

let arrScore = [1,23,45,568,8,34,56,7]
print(arrScore.filter{ $0 % 2 == 0})

/*
 Reduce
 Use reduce to combine all items in a collection to create a single new value.
 */
print("Reduce:")
print(arrScore.reduce(0,+))
let arrStrData = ["one billion", "one million", "one trillion"]
print(arrStrData.reduce(""){data,name   in "\(name),\(data)"})

/*
 FlatMap
 The simplest use is as the name suggests to flatten a collection of collections.
 */
print("FlatMap:")

let collections = [[5,2,7],[4,8],[9,1,3]]
print(collections.flatMap{$0})

let people: [String?] = ["Tom",nil,"Peter",nil,"Harry"]
print(people.flatMap{$0})
print(collections.flatMap{
    arrSomeData in arrSomeData.filter{ $0%2 == 0 }
})

print(collections.flatMap{
    arrIntegers in arrIntegers.map{
                    $0*$0
        }
    }
)

print(collections.flatMap{
    arrIntegers in arrIntegers.reduce(0,+)
})

/*
 Chaining:
 You can chain methods. For example to sum only those numbers greater than or equal to seven we can first filter and then reduce
 */
let marks = [4,5,8,2,9,7]
print(marks.filter{
               $0>=7
        }.reduce(0,+)
)


