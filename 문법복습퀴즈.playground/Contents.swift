import UIKit
import Darwin

// MARK: - 문제에 필요한 자료
struct DataArray {
  static let runtimeArray = [90, 131, 118, 129, 93, 103, 119, 134, 95, 127, 111, 140, 102, 133, 131, 132, 99, 117, 101, 90, 103, 138, 129, 136, 126, 108, 126, 129, 140, 115, 118, 100, 126, 106, 107, 108, 80, 99, 94, 95, 118, 95, 95, 101, 121, 107, 136, 104, 94, 138, 120, 95, 127, 115, 126, 102, 124, 128, 96, 110, 107, 132, 117, 133, 128, 134, 132, 112, 90, 101, 121, 111, 135, 112, 92, 104, 99, 136, 140, 126, 105, 112, 127, 140, 114, 96, 135, 102, 103, 110, 126, 140, 125, 112, 128, 134, 119, 140, 115, 102, 124, 129, 101, 122, 118, 110, 92, 92, 131, 136, 123, 138, 125, 102, 119, 93, 122, 121, 117, 92, 105, 123, 113, 104, 123, 93, 111, 111, 115, 126, 122, 112, 122, 115, 119, 127, 121, 107, 127, 110, 128, 134, 134, 111, 123, 115, 125, 119, 101, 103, 100, 93, 130, 116, 101, 136, 104, 112, 128, 126, 109, 107, 140, 97, 107, 119, 102, 130, 130, 91, 119, 129, 134, 123, 92, 120, 108, 111, 110, 104, 96, 134, 103, 124, 70, 109, 94, 138, 98, 116, 108, 105, 109, 108, 98, 131, 114, 114, 106, 93, 116, 114, 106, 129, 120, 134, 138, 93, 122, 135, 110, 128, 111, 134, 114, 109, 128, 99, 91, 130, 129, 139, 131, 104, 117, 135, 112, 113, 123, 96, 134, 107, 136, 91, 97, 120, 94, 100, 126, 106, 126, 117, 127, 102, 110, 113, 91, 100, 101, 124, 118, 120, 134, 90, 95, 98, 131, 139, 75, 91, 117, 137, 90, 104, 125, 92, 134, 104, 123, 116, 132, 104, 129, 134, 100, 91, 75, 97, 134, 103, 100, 127, 128, 91, 139, 134, 111, 109, 122, 132, 109, 105, 137, 131, 97, 139, 123, 135, 122, 116]
  
  static let chatArray = ["오케이 구글, 끝말잇기 게임 하자", "네 알겠습니다", "먼저해", "시작합니다. 등신대" , "대나무", "무다리", "리어카", "카드뮴", "뮴..?", "시간이 초과되었습니다. 제가 이겼습니다.", "분하다", "바보", "바보라니!!", "양아치", "헐....실망이야", "죄송합니다.", "그래 한 번만 봐줄게", "속았죠? 멍청이", "..오케이구글 조용히해", "음소거 모드 작동합니다."]
  
  static let blacklistArray = ["바보", "양아치", "멍청이"]
  
  static let emojiArray = ["😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😎", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊", "😊"]
}

// MARK: - 개념 다지기
// 1. 변수와 상수를 예를 들어 선언하고, 둘의 차이점에 대해 서술하세요.
// 변수는 변할 수 있는 수,
// 상수는 변할 수 없는 수
// 따라서 값이 사용자에 맞게 변하게 지정하고 싶다면 변수를 그렇지 않다면 상수를 써야한다.

// 2. 기본 데이터타입은 5가지가 있습니다. 종류와 각각 타입의 특징을 간략히 서술하세요.
// int : 정수형 타입으로 말그대로 음의 정수와 양의 정수를 사용할 수 있다.
// string : 문자열 타입으로 문자들이 나열된 타입을 말한다.
// float : 실수형 타입으로 소수점이 붙는 수에 관한 타입이다.
// character : 문자 타입으로 한 문자의 대한 정보를 가진 타입이다.
// bool : 참과 거짓 두가지로 답이 나뉘는 논리형 타입이다.

// 3. swift 연산자는 3가지 종류가 있습니다. 각각의 연산자의 종류와 기능에 대해 서술하세요.
// 산술연산자 : 말그대로 산술을 하는 + - * / 하는 연산자이다.
// 대입연산자 : 어떤 변수에 대입을 하여
// 논리연산자 : &&, || 같이 and연산, or연산 어떠한 조건에 대해 실행할지 말지를 결정하는 연산자이다.

// 4. '문자열 보간법'이란 무엇인지 예시코드를 작성해보세요.
// let name = "Jeong Chan-Wook"
// print("제 이름은 \(name)입니다.")

// 5. 컬렉션 타입에는 3가지가 있습니다. 종류와 각각 타입의 특징을 간략히 서술하세요.
// 배열 : 배열은 순서가 존재하는 값의 집합이다.
// 세트 : 세트는 순서가 존재하지 않으며 순서가 없기 때문에 값이 중복되지않는다.
// 딕셔너리 : 키와 값의 1:1 매칭으로 사전처럼 key = value의 형태로 존재한다.

// MARK: - 코드 연습하기
/*
 Q1.
 아래 문장에서 [] 안에 작성된 값을 변수 또는 상수로 선언하고 값을 초기화하여 print를 해보세요.
 
 (출력할 문장)
 영희는 지금까지 [88]개의 물품을 중고거래했고, 민수의 물품으로 중고거래 한 사람들은 [4.5]점의 만족도를 보였습니다. 오늘도 민수는 [2]개의 물품을 [서울역]에서 거래할 예정입니다.
 
 (참고 예제)
 영희는 [12]살입니다.
 var age: Int = 12
 print("영희는 \(age)살 입니다.")
 */

//func question01() {
//    let item: Int = 88
//    let score: Float = 4.5
//    let item2: Int = 2
//    let place: String = "서울역"
//
//    print("영희는 지금까지 \(item)개의 물품을 중고거래했고, 민수의 물품으로 중고거래 한 사람들은 \(score)점의 만족도를 보였습니다. 오늘도 민수는 \(item2)개의 물품을 \(place)에서 거래할 예정입니다.")
//}
//question01()

/*
 Q2.
 민희는 자신의 BMI 지수가 궁금해져 계산을 해보려고 합니다. 민희의 키와 몸무게가 변하더라도 정상적으로 동작하는 BMI 계산기 프로그램을 작성해보세요.
 
 (BMI지수란?)
 - 자신의 몸무게(kg)를 키의 제곱(m)으로 나눈 값입니다.
 - BMI가
 18.5 미만이면 저체중,
 18.5이상 23.0 미만이면 정상,
 23.0이상 25.0 미만이면 과체중,
 25.0 이상부터는 고도비만
 으로 판정합니다.
 
 - ex) 키 170㎝에 몸무게 73kg이면, 계산식은 73 ÷ (1.7×1.7) = 25.26 으로 고도비만으로 평가됩니다.
 
 조건1. 키, 몸무게, BMI 3가지를 변수 또는 상수로 선언하여 코드를 작성해주세요.
 조건2. BMI 는 키와 몸무게로 연산한 값을 저장합니다.
 조건3. BMI지수에 따라, 저체중, 정상, 과체중, 고도비만으로 결과가 출력될 수 있도록 구현합니다.
 */

//func question02(height: Double, weight: Double) {
//
//    let BMI: Double = weight / (height/100 * height/100)
//
//    if BMI < 18.5 {
//        print("저체중")
//    } else if BMI < 23.0 {
//        print("정상")
//    } else if BMI < 25.0 {
//        print("과체중")
//    } else {
//        print("고도비만")
//    }
//}
//question02(height: 170, weight: 73)


/*
 Q3.
 이번 문제는 선글라스 이모티콘을 찾아라! 입니다. 수많은 이모티콘 사이에 선글라스 낀 이모티콘이 숨어있어요. 상단의 코드에 선언된 emojiArray에서 선글라스 낀 이모티콘 요소가 몇 개인지 알려주세요.
 (출력결과 예시: 선글라스 낀 이모티콘은 n개입니다)
 */

//func question03() {
//    var cnt = 0
//    for emoji in DataArray.emojiArray {
//        if emoji == "😎" {
//            cnt += 1
//        }
//    }
//    print("선글라스 낀 이모티콘은 \(cnt)개 입니다.")
//}
//question03()

/*
 Q4.
 영수는 지금까지 넷플릭스에서 시청했던 영화 통계를 내보려고 합니다. 파일 상단에 선언된 runtimeArray에는 러닝타임(분)이 요소로 들어있습니다. 이를 활용해 영화 통계 정보를 만들어보세요.
 
 조건1. 배열에 저장된 모든 요소를 활용해 [총 갯수], [평균 러닝타임], [총합 러닝타임]을 연산하여 print로 출력해보세요.
 조건2. 총합 러닝타임은 n일 n시간 n분으로 환산하여 출력합니다.
 
 (출력결과 예시: 영수는 지금까지 n개의 영화를 보았고, 평균 러닝타임은 n분, 지금까지 n일 n시간 n분 시청하셨습니다.)
 */

//func question04() {
//    let totalCount = DataArray.runtimeArray.count
//    var totalRunningTime = 0
//    for run in DataArray.runtimeArray {
//        totalRunningTime += run
//    }
//    let averageRunningTime = totalRunningTime / totalCount
//
//    let minute = totalRunningTime % 60
//    let hour = totalRunningTime / 60
//    let day = hour / 24
//    let realhour = day % 24
//
//
//    print("영수는 지금까지 \(totalCount)개의 영화를 보았고, 평균 러닝타임은 \(averageRunningTime)분, 지금까지 \(day)일 \(realhour)시간 \(minute)분 시청하셨습니다.")
//}
//question04()

/*
 Q5.
 철수는 오케이구글과 서로 번갈아서 대화를 하고 있습니다. 그런데 오케이구글에게 오류가 많아 이상한 단어를 갑자기 사용하네요. 이상한 단어는 **로 표기하면서, 대화 내용을 실제 채팅과 유사하게 보이게끔 출력해보세요.
 
 조건1. questionData.swift는 수정하지 않습니다.
 조건2. 대화 배열은 chatArray, 블랙리스트 배열은 blacklistArray로 선언되어 있습니다.
 조건3. chatArray에서 홀수 인덱스(1, 3, 5..)는 심심이의 대화이고, 나머지는 하영이의 대화입니다.
 조건4. 블랙리스트에 포함된 단어는 **로 표기합니다. 단어의 길이는 무시합니다.
 
 (예시)
 let chatArray = ["안녕", "바보야", "잘가", "똥개야"]
 let blacklistArray = ["똥개야"]
 
 (출력 결과)
 철수님의 대화: 안녕
 구글님의 대화: 바보야
 철수님의 대화: 잘가
 구글님의 대화: **
 */

//func question05() {
//    for i in 0..<DataArray.chatArray.count {
//        let chat = DataArray.chatArray[i]
//        if i % 2 == 0 {
//            if DataArray.blacklistArray.contains(chat) {
//                    print("철수님의 대화: **")
//            } else {
//                print("철수님의 대화: \(DataArray.chatArray[i])")
//            }
//        } else {
//            if DataArray.blacklistArray.contains(chat){
//                print("구글님의 대화: **")
//            } else {
//                print("구글님의 대화: \(DataArray.chatArray[i])")
//            }
//        }
//    }
//}
//question05()

//func test(str: String) -> String {
//    let blackword = "바보"
//    var blackArray: [Character] = []
//    var charArray: [Character] = []
//
//    for i in blackword {
//        blackArray.append(i)
//    }
//
//    for i in str {
//        charArray.append(i)
//    }
//
//    print(charArray)
//    print(blackArray)
//
//    for i in 0..<blackArray.count {
//        for j in 0..<charArray.count {
//            if charArray[i] == blackArray[j] {
//
//            }
//
//        }
//    }
//
//
//    return "" // **
//}
//
//test(str: "바보라니!!") == "**" // true



/*
 Q6.
 로또를 좋아하는 철수는 자동으로 랜덤 번호를 추출해주는 로또 생성 프로그램을 만들고 싶어합니다. 철수를 위해, 로또 생성 프로그램을 만들어주세요.
 
 조건1. 로또 번호는 1부터 45까지의 숫자 중 랜덤으로 7개의 숫자를 추출합니다.
 조건2. 추출된 7개의 숫자는 모두 중복되지 않습니다.
 
 (출력결과 예시: 로또 번호는 [3, 10, 33, 42, 18, 31, 7] 입니다)
 */

//func question06() {
//    var rand: [Int] = []
//    var number: [Int] = []
//    for i in 1...45 {
//        rand.append(i)
//    }
//    rand.shuffle()
//    for i in rand {
//        number.append(i)
//        if number.count > 6 {
//            break
//        }
//    }
//   print(number)
//}
//question06()

/*
 Q7.
 영희는 다음 숫자의 각자리 숫자들의 합이 갑자기 궁금해졌어요. 영희가 입력한 숫자의 각자리의 합을 출력하는 프로그램을 만들어주세요.
 
 (출력결과 예시: 12345의 각 자리숫자 합은 15입니다.)
 */

//func question07(n: Int) -> Int {
//    var sum = 0
//    let intArray = Array(String(n))
//
//    for i in 0...intArray.count {
//        sum += i
//    }
//
//    return sum
//}
//question07(n: 1234)

/*
 Q8.
 영희가 이번엔 주어진 2~8자리 숫자에서 조합할 수 있는 최고의 2자리 숫자가 궁금해졌어요.
 주어진 수에서 2개를 뽑아 십의자리 숫자를 만든다고 할 때, 만들 수 있는 가장 큰 값을 출력하는 프로그램을 만들어주세요.
 
 (출력결과 예시: 28341의 가장 큰 두자리 숫자 조합은 84 입니다.)
 */

// for문으로 풀어오기 + 위에 못푼문제 풀어오기
func question08(n: Int) -> Int {

    let strNum = String(n)
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var tmp: Int = 0
    var number:Int = 0
    
    strNum.forEach { char in
        let c = Int(String(char))!
//        print(c)
        // 1. firstNumber에 char를 담아준다.
        
        // 2. 만약에 맨 첫번쨰 원소이면 대입만해주고 넘어가야함.
        if firstNumber == 0 {
            firstNumber = c
        } else {
            secondNumber = c
            
            // 3. f s 누가 더 크냐 -> 더 큰값을 f에 넣어준다.
            if firstNumber < secondNumber {
                tmp = firstNumber
                firstNumber = secondNumber
                secondNumber = tmp
            } else if tmp > secondNumber {
                secondNumber = tmp
            }
        }
        number = firstNumber + secondNumber
        print(firstNumber, secondNumber, tmp)
    }
    
    return number
}

question08(n: 28341)


//func question09(n: Int) -> Int {
//    //    let desArr: [String] = String(n).map{ String($0) }.sorted(by: >)
//    //    return Int(desArr[0] + desArr[1])!
//
//    var desArr: [String] = String(n).map{ String($0) }
//    desArr = desArr.sorted(by: >)
//
//    let answer = desArr[0] + desArr[1]
//
//    if let biggestNubmer = Int(answer) {
//        return biggestNubmer
//    } else {
//        return 0
//    }
//}
//
//question09(n: 28341) == 84


