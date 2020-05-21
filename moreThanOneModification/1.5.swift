import Foundation

/* Существуют три вида модифицирующих операций со строками: вставка
 символа, удаление символа и замена символа. Напишите функцию, которая
 проверяет, находится ли две строки на расстоянии одной модификации (или
 нуля модификаций)*/

func inString(_ str1: String, moreThanOneModificationThanIn str2: String) -> Bool {
    if str1 == str2 {
        return true
    }
    let difference = abs(str1.count - str2.count)
    if difference > 1 {
        return false
    }
    var string1: String
    var string2: String
    if str1.count > str2.count {
        string1 = str1
        string2 = str2
    } else {
        string1 = str2
        string2 = str1
    }
    var counter = 0
    var i = string1.startIndex
    var j = string2.startIndex
    while i != string1.endIndex {
        if string1[i] == string2[j] {
            i = string1.index(after: i)
            if j != string2.index(before: string2.endIndex) {
                j = string2.index(after: j)
            }
        } else if string1[i] != string2[j] && difference == 1 {
            counter += 1
            i = string1.index(after: i)
        } else {
            counter += 1;
            i = string1.index(after: i)
            j = string2.index(after: j)
        }
    }
    if counter > 1 {
        return false
    }
    return true
}

print(inString("Apple", moreThanOneModificationThanIn: "Aple"))
