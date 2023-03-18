import Foundation

/* 문제
 
    문자열 my_string과 정수 num1, num2가 매개변수로 주어질 때, my_string에서 인덱스 num1과 인덱스 num2에 해당하는 문자를 바꾼 문자열을 return 하도록 solution 함수를 완성해보세요.

 */

/* 제한사항
 
     1 < my_string의 길이 < 100
     0 ≤ num1, num2 < my_string의 길이
     my_string은 소문자로 이루어져 있습니다.
     num1 ≠ num2
 
 */

private func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    //인덱스를 바꾸기 편하게 my_string을 [String]로 변환하기
    let myString: [String] = my_string.map{String($0)}
    //인덱스를 바꾼 변수
    var result: [String] = []
    //for문을 돌리면서 myString의 인덱스와 값을 얻기
    for (index, item) in myString.enumerated() {
        //만약 인덱스와 num1의 값이 동일하다면
        if num1 == index {
            //result에 num2의 값을 넣어주기
            result.append(myString[num2])
        //만약 인덱스와 num2의 값이 동일하다면
        } else if num2 == index {
            //result에 num1의 값을 넣어주기
            result.append(myString[num1])
        //num1과 num2와 같은 인덱스가 아니라면
        } else {
            //계속 result에 myString의 값을 더해주기
            result.append(item)
        }
    }
    //문자열을 반환해야하기 때문에[String] -> String을 .joined()함수를 이용해 변환 후 반환하기
    return result.joined()
    
}
