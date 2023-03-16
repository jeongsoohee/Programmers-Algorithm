import Foundation

/* 문제
 
    영어가 싫은 머쓱이는 영어로 표기되어있는 숫자를 수로 바꾸려고 합니다. 문자열 numbers가 매개변수로 주어질 때, numbers를 정수로 바꿔 return 하도록 solution 함수를 완성해 주세요.

 */

/* 제한사항
 
     numbers는 소문자로만 구성되어 있습니다.
     numbers는 "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" 들이 공백 없이 조합되어 있습니다.
     1 ≤ numbers의 길이 ≤ 50
     "zero"는 numbers의 맨 앞에 올 수 없습니다.
 
 */

private func solution(_ numbers:String) -> Int64 {
    //strNumer에서 해당 문자열과 일치하는 경우 해당 숫자를 담아서 -> Int로 변환 후 반환 할 변수
    var result: String = ""
    //for문에서 문자 하나씩을 담아서 해당 문자열(숫자)을 포함하는지 여부를 체크할 변수
    var strNumer: String = ""
    //for문으로 문자열 하나씩을 꺼내서 체크하기
    for num in numbers {
        strNumer += String(num)
         if strNumer.contains("one") {
            result += "1"
             strNumer = ""
        } else if strNumer.contains("two") {
            result += "2"
            strNumer = ""
        } else if strNumer.contains("three") {
            result += "3"
            strNumer = ""
        } else if strNumer.contains("four") {
            result += "4"
            strNumer = ""
        } else if strNumer.contains("five") {
            result += "5"
            strNumer = ""
        } else if strNumer.contains("six") {
            result += "6"
            strNumer = ""
        } else if strNumer.contains("seven") {
            result += "7"
            strNumer = ""
        } else if strNumer.contains("eight") {
            result += "8"
            strNumer = ""
        } else if strNumer.contains("nine") {
            result += "9"
            strNumer = ""
        } else if strNumer.contains("zero") {
            result += "0"
            strNumer = ""
        }
    }
    //문자열로 이루어진 숫자를 Int형태로 변환 후 반환하기
    return Int64(result) ?? 0
}


private func solution1(_ numbers:String) -> Int64 {
    //딕셔너리를 생성해서 키에 해당하는 벨류값을 result에 담을 것임!
    var dic: [String : String] = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"
    ]
    //딕셔너리의 키와 일치하는 벨류값을 담아서 반환할 변수
    var result: String = ""
    //numbers에서 문자 하나씩을 체크하며 딕셔너리 키와 맞는지 체크할 변수
    var strNumber: String = ""
    //for문으로 문자 하나씩 꺼내기
    for num in numbers { // o, n, e ...
        //문자 하나씩을 strNumber에 담으면서
        strNumber += String(num)
        //strNumber이 딕셔너리의 키들중에 포함되는 것이 있다면
        if dic.keys.contains(strNumber) {
            //키값을 서브스크립트 문법으로 실행시킴으로써 -> 키값에 해당하는 벨류값을 result에 담아주기
            result += dic[strNumber]!
            //담겨진다면 다음 문자도 똑같이 체크해야되기때문에 빈문자열로 만들기
            strNumber = ""
        }
    }
    return Int64(result)!
}
