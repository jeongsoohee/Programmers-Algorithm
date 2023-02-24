import Foundation

/* 문제
 
    정수 n이 매개변수로 주어질 때 n의 각 자리 숫자의 합을 return하도록 solution 함수를 완성해주세요.

 */

/* 제한사항
 
    0 ≤ n ≤ 1,000,000
 
 */

func solution(_ n:Int) -> Int {
    //숫자 n을 문자열로 바꾸게되면
    //for문을 돌릴 때 숫자 하나의 값을 꺼낼 수 있게 되니까 문자열로 변경하기!
    var str: String = String(n)
    //반환 할 변수 생성하기
    var result: Int = 0
    
    for sum in str {
        //문자열에서 꺼내면 캐릭터타입이 되기때문에 다시 문자열타입으로 변경 후
        //정수타입으로 변경해서 더해주기!
        result += Int(String(sum))!
    }
    
    return result
}
