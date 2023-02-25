import Foundation

/* 문제
 
    정수 n과 정수 배열 numlist가 매개변수로 주어질 때, numlist에서 n의 배수가 아닌 수들을 제거한 배열을 return하도록 solution 함수를 완성해주세요.

 */

/* 제한사항
 
     1 ≤ n ≤ 10,000
     1 ≤ numlist의 크기 ≤ 100
     1 ≤ numlist의 원소 ≤ 100,000
 
 */

private func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    //반환할 변수 생성
    var result: [Int] = []
    
    for num in numlist {
        //for 문으로 하나하나씩 꺼내서
        //n으로 나누었을 때 나머지가 0으로 떨어진다면 담아주기
        if num % n == 0 {
            result.append(num)
        }
    }
    
    return result
}
