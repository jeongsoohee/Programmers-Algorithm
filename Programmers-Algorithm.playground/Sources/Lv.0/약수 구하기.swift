import Foundation

/* 문제
 
    정수 n이 매개변수로 주어질 때, n의 약수를 오름차순으로 담은 배열을 return하도록 solution 함수를 완성해주세요.

 */

/* 제한사항
 
    1 ≤ n ≤ 10,000
 
 */

private func solution(_ n:Int) -> [Int] {
    //n의 약수를 반환할 배열 생성
    var resultArray: [Int] = []
    //1부터 n까지 for문을 돌리면서 n과 나누어 떨어진다면
    //배열에 담기
    for item in 1...n {
        if n % item == 0 {
            resultArray.append(item)
        }
    }
    return resultArray
}
