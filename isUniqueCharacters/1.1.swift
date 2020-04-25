var str: String = "Hello"

/*
 Реализуйте алгоритм, определяющий, все ли символы в строке встречаются только один раз.
 А если при этом запрещено использование дополнительных структур данных?
 */


//Реализация без дополнительных структур
func isUniqueCharacters0(in string: String) -> Bool {
    var characterSet = Array<Bool>(repeating: false, count: 128)
    
    for character in string {
        if let val = Character(extendedGraphemeClusterLiteral: character).asciiValue {
            if characterSet[Int(val)] {
                return false
            }
            characterSet[Int(val)] = true
        }
    }
    return true
}


//Реализация со структурами данных
func isUniqueCharacters1(in string: String) -> Bool {
    var characterSet = Dictionary<Character, Bool>()
    
    for character in string {
        if characterSet[character] != nil {
            return false
        } else {
           characterSet[character] = true
        }
    }
    return true
}

let result0 = isUniqueCharacters0(in: str)
let result1 = isUniqueCharacters1(in: str)

print(result0)
print(result1)
