import Foundation

/* 문제
 
    정수 n이 매개변수로 주어질 때 n의 각 자리 숫자의 합을 return하도록 solution 함수를 완성해주세요.

 */

/* 제한사항
 
    0 ≤ n ≤ 1,000,000
 
 */

private func solution(_ n:Int) -> Int {
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


private func solution1(_ n:Int) -> Int {
    //반환할 변수 생성
    var result: Int = 0
    //상수 n을 활용하기 위해 변수에 담기
    var divisionN: Int = n
    //반복되는 조건이 있는 것이아니라 자릿수가 1이 될 때까지 반복해줘야함으로 while문 사용!
    while divisionN > 0 {
        //10으로 %하게되면 나머지에 맨 마지막자리수가 나오게 되는데 그 값을 계속 더해주기
        result += divisionN % 10
        //계속 같은 값을 더해주면 안되니까 %한 후
        //나누기10을 하여 1자리씩 똑같이 없애서 담아주는 것을 반복하기
        divisionN /= 10
    }
    return result
}
