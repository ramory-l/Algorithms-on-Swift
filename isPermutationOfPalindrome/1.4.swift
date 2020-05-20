import Foundation

/* Напишите функцию, которая проверяет, является ли заданная строка
 перестановкой полиндрома. (Полиндром - слово или фраза, одинаково
 читающиеся в прямом и обратном направлении; перестановка - строка,
 содержащая те же символы в другом порядке.) Палиндром не ограничивается
 словами из словаря.*/

func isPermutationOfPalindrome(string: String) -> Bool {
    var wordsCount = [String: Int]()
    for character in string.lowercased() {
        if character.isLetter {
            if wordsCount[String(character)] == nil {
                wordsCount[String(character)] = 1
            } else {
                wordsCount[String(character)]! += 1
            }
        }
    }
    var numberOfOdds = 0
    for letter in wordsCount {
        if letter.value % 2 == 1 {
            numberOfOdds += 1
        }
        if numberOfOdds > 1 {
            return false
        }
    }
    return true
}

print(isPermutationOfPalindrome(string: "Лёша на полке клопа нашёл"))
