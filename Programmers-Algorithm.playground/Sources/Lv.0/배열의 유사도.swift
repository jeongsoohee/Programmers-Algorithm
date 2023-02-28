import Foundation

/* 문제
 
    두 배열이 얼마나 유사한지 확인해보려고 합니다. 문자열 배열 s1과 s2가 주어질 때 같은 원소의 개수를 return하도록 solution 함수를 완성해주세요.
 */

/* 제한사항
 
     1 ≤ s1, s2의 길이 ≤ 100
     1 ≤ s1, s2의 원소의 길이 ≤ 10
     s1과 s2의 원소는 알파벳 소문자로만 이루어져 있습니다
     s1과 s2는 각각 중복된 원소를 갖지 않습니다.
 
 */

private func solution(_ s1:[String], _ s2:[String]) -> Int {
    //si요소와 s2요소가 같다면 카운트를 올려줄 변수 생성
    var count: Int = 0
    //for문을 돌려서 두배열의 요소를 하나하나 비교해보기
    for str in s1 {
        for item in s2 {
            //두개가 같다면 count에 1을 더해주기
            if str == item {
                count += 1
            }
        }
    }
    //위의 반복문을 다 거쳤는데도 같은 요소가 없다면 count의 값은 자동으로 0이 반환되기
    return count
}

private func solution1(_ s1:[String], _ s2:[String]) -> Int {

   //filter고차함수를 이용해 {}안에 s2.contains($0)조건이 참이라면
   //참에 해당하는 배열을 새로 리턴하게되는데
   //그 배열의 count를 세기!
   return s1.filter{ s2.contains($0) }.count
}


private func solution2(_ s1:[String], _ s2:[String]) -> Int {
    
    //.intersection함수는 .에 해당하는 집합과 지정된 시퀀스 모두에 공통적인 요소가 포함된 새 집합을 반환하는데
    //공통적인 요소가 포함되어있는 새 집합에 count를 세기!
    //이 방법은 생각하지 못했는데 풀이를 보고나서 이런 방법도있구나 생각했다!
    return Set(s1).intersection(Set(s2)).count
 }
