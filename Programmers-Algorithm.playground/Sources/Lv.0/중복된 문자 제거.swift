import Foundation

/* 문제
 
    문자열 my_string이 매개변수로 주어집니다. my_string에서 중복된 문자를 제거하고 하나의 문자만 남긴 문자열을 return하도록 solution 함수를 완성해주세요.
 */

/* 제한사항
 
     1 ≤ my_string ≤ 110
     my_string은 대문자, 소문자, 공백으로 구성되어 있습니다.
     대문자와 소문자를 구분합니다.
     공백(" ")도 하나의 문자로 구분합니다.
     중복된 문자 중 가장 앞에 있는 문자를 남깁니다.
 
 */

private func solution(_ my_string:String) -> String {
    //my_string에서 중복되지않은 문자만 담아서 반환할 변수
    var result: String = ""
    //for문으로 문자 하나씩 꺼내기
    for item in my_string {
        //result에다가 my_string문자 하나씩을 더할 것인데
        //만약 이미 존재하는 문자라면 포함하지않고
        if !result.contains(item) {
            //포함되지않은 문자라면 result에 더해주기
            result += String(item)
        }
    }
    return result
}
