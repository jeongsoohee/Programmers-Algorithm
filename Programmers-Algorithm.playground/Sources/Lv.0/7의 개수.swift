import Foundation

/* 문제
 
    머쓱이는 행운의 숫자 7을 가장 좋아합니다. 정수 배열 array가 매개변수로 주어질 때, 7이 총 몇 개 있는지 return 하도록 solution 함수를 완성해보세요.
 */

/* 제한사항
 
     1 ≤ array의 길이 ≤ 100
     0 ≤ array의 원소 ≤ 100,000
 
 */

private func solution(_ array:[Int]) -> Int {
    //7을 찾을 때 마다 count를 해 줄 변수 생성
    var result: Int = 0
    //[Int]를 String로 변환해서 받을 변수 생성
    var strNum: String = ""
    //[Int]안에 있는 요소들을 String로 변환해서 담는 과정
    for item in array {
     strNum += String(item)
    }
    //String에서 하나씩 for문으로 7이 포함 되어 있는지를 확인 후
    //있다면 result에 1씩 더해주기
    for str in strNum {
        if String(str).contains("7") {
            result += 1
            
        }
    }
    return result
}
