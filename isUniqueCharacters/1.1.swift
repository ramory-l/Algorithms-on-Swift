var str: String = "Hello"

func isUniqueCharacters(in string: String) -> Bool {
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

let result = isUniqueCharacters(in: str)

print(result)
