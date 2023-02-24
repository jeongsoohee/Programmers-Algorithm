import Foundation

/* 문제
 
    문자열 str1, str2가 매개변수로 주어집니다. str1 안에 str2가 있다면 1을 없다면 2를 return하도록 solution 함수를 완성해주세요.
 */

/* 제한사항
 
     1 ≤ str1의 길이 ≤ 100
     1 ≤ str2의 길이 ≤ 100
     문자열은 알파벳 대문자, 소문자, 숫자로 구성되어 있습니다.
 
 */

private func solution(_ str1:String, _ str2:String) -> Int {
    
  //str1에 str2가 포함되어있다면 1을 리턴 : 아니라면 2를 리턴하기
  return str1.contains(str2) ? 1 : 2

}
