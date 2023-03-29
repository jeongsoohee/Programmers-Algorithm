import Foundation

/* 문제
 
    정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소 중 두 개를 곱해 만들 수 있는 최댓값을 return하도록 solution 함수를 완성해주세요.



 */

/* 제한사항
 
     0 ≤ numbers의 원소 ≤ 10,000
     2 ≤ numbers의 길이 ≤ 100
 
 */

private func solution(_ numbers:[Int]) -> Int {
    //매개변수로 들어오는 numbers를 오름차순으로 정렬하기
    var sortedNumbers: [Int] = numbers.sorted()
    //곱해서 반환 할 변수 생성하기
    var multiplication: Int = 0
    //오름차순으로 정렬된 배열에서 마지막과 그 전의 값을 곱해주고 반환할 변수에 할당해주기
    multiplication = sortedNumbers.last! * sortedNumbers[sortedNumbers.endIndex-2]
    
    return multiplication
    
}
