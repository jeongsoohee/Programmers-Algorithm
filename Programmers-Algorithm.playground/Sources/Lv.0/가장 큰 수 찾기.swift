import Foundation

/* 문제
 
    정수 배열 array가 매개변수로 주어질 때, 가장 큰 수와 그 수의 인덱스를 담은 배열을 return 하도록 solution 함수를 완성해보세요.
 */

/* 제한사항
 
     1 ≤ array의 길이 ≤ 100
     0 ≤ array 원소 ≤ 1,000
     array에 중복된 숫자는 없습니다.
 
 */

private func solution(_ array:[Int]) -> [Int] {
    //배열을 오름차순으로 정렬 후 마지막에있는 요소를 담기
    guard let maxNumber = array.sorted().last else { return [] }
    //마지막 요소가 앞에서부터 array 배열의 몇번째에있는지 담기
    let index = array.firstIndex(of: maxNumber)!
    // 두 개를 담아서 리턴
    return [maxNumber, index]
    
}
