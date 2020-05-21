import Foundation

/* Реализуйте метод для выполнение простейшего сжатия строк с использованием
 счетчика повторяющихся символов. Например, строка aabcccccaaa превращается
 в a2b1c5a3. Если "cжатая" строка не становится короче исходной, то метод
 возвращает исходную строку. Предполагается, что строка состоит только из
 букв верхнего и нижнего регистра (a-z).*/

func compress(String str: String) -> String {
    if str.count == 0 {
        return ""
    }
    var string = ""
    string.append(str[str.startIndex])
    var i = str.index(after: str.startIndex)
    var counter = 1
    while i != str.endIndex {
        if str[i] != string[string.index(before: string.endIndex)] {
            string.append(String(counter))
            string.append(str[i])
            counter = 1
        } else {
            counter += 1
        }
        i = str.index(after: i)
    }
    string.append(String(counter))
    if str.count < string.count {
        return str
    }
    return string
}

print(compress(String: "aaaaabbbbbtttttssss"))
