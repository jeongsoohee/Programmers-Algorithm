import Foundation

/* 문제
 
    영어 대소문자로 이루어진 문자열 my_string이 매개변수로 주어질 때, my_string을 모두 소문자로 바꾸고 알파벳 순서대로 정렬한 문자열을 return 하도록 solution 함수를 완성해보세요.
 */

/* 제한사항
 
    0 < my_string 길이 < 100
 */

//맨 처음 시도
func solution(_ my_string:String) -> String {
    var result: String = ""
    let myString: String = my_string.lowercased()
    
    for alphabet in myString.sorted() {
        
        result += String(alphabet)
    }
    
    return result
}

// 주석, 코드 길이 다듬어보기
func solution1(_ my_string:String) -> String {
    //반환할 변수
    var result: String = ""
    
    //매개변수를 소문자로 변환시켜 담을 변수
    let myString: String = my_string.lowercased()
    
    //문자열을 오름차순으로 정렬하여 반환할 변수에 담는다.
    result += myString.sorted()
   
    return result
}

func solution2(_ my_string:String) -> String {
    
    //반환할 변수
    var result: String = ""
    
    
    //매개변수를 소문자로 변환시켜 담을 변수
    let myString: String = my_string.lowercased()
    //문자열을 오름차순으로 정렬하여 반환할 변수에 담는다.
    result += myString.sorted()
   
    return result
}

// map을 이용해보기
func solution3(_ my_string:String) -> String {
    //반환할 변수
    var result: String = ""
    //스위프트 문법에맞는 카멜케이스형식의 변수
    let myString: String = my_string
    // lowercased() 문자열 반환
    // sorted() 캐릭터 배열 반환
    // map을 이용하여 String 배열로 변환
    // .joined()을 이용하여 배열을 평면화
    result = myString.lowercased().sorted().map{String($0)}.joined()
    
    return result
}
