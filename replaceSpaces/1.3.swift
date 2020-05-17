import Foundation

/* Напишите метод, заменяющий все пробелы в строке символами '%20'.
   Можете считать, что длина строки позволяет сохранить дополнительные символы, а фактическая длина строки известна заранее.
 */

func replaceSpaces(in string: String, upTo length: Int) -> String {
    let newStringLength: Int
    if length > string.count {
        newStringLength = string.count
    } else {
        newStringLength = length
    }
    var i = string.startIndex
    var newString = ""
    var j = string.startIndex
    for _ in 0..<newStringLength {
        if string[i] == " " {
            newString.append("%20")
            j = newString.endIndex
        } else {
            newString.insert(string[i], at: j)
            j = newString.index(after: j)
        }
        i = string.index(after: i)
    }
    return newString
}


print(replaceSpaces(in: "Mr John Smith     ", upTo: 13))
