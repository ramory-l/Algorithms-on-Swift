import Foundation

/* Для двух строк напишите метод, определяющий, является ли одна строка перестановкой другой */

// Первый способ
func isString1(_ string1: String, transpositionOf string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

// Второй способ
func isString2(_ string1: String, transpositionOf string2: String) -> Bool {
    if string1.count != string2.count {
        return false
    }
    
    var letters = Array(repeating: 0, count: 128)
    
    for character in string1.utf8 {
        letters[Int(character)] += 1
    }
    for character in string2.utf8 {
        letters[Int(character)] -= 1
        if letters[Int(character)] < 0 {
            return false
        }
    }
    return true
}

print(isString1("abbc", transpositionOf: "bbca"))
print(isString2("abbc", transpositionOf: "bbca"))
