import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/models/model_item.dart';

class ItemProvider with ChangeNotifier {
  //late CollectionReference itemsReference;
  List<Item> items = [
    Item(
        title: "윈도우 디지털 포렌식 완벽 활용서",
        description:
            "17년 경력의 디지털 포렌식 전문 수사관 출신 저자가 들려주는  실전에서 사용하는 디지털 증거와 윈도우 디지털 포렌식  디지털 포렌식은 디지털 디바이스에서 범죄와 관련된 증거를 찾아 실체적 진실을 규명해가는 과학 수사의 한 분야이다. 디지털 포렌식 분석관은 현장에서 전문 도구를 사용하여 디지털 증거를 획득하고 분석한다. 현장 중심의 디지털 포렌식에서는 이론도 중요하지만 실무 경험이 무엇보다 중요하다. 이 책에서 저자는 가상의 범죄 시나리오를 구성하고, 디지털 기기에서 단서를 찾아 범죄와의 연관성을 입증해가는 디지털 포렌식 증거 분석 과정을 생생하게 그려냈다.     “이 책은 우리나라에 디지털 포렌식을 도입할 초기부터 저와 함께 한 저자가 집필한 것으로, 현장에서 가장 많이 접하게 되는 윈도우 시스템에서 디지털 포렌식에 대한 전반적인 이해와 실무적인 감각을 키우는 데 도움이 될 것입니다.”  - 제42대 검찰총장 문무일",
        brand: "비제이퍼블릭",
        imageUrl:
            "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FMChbP%2FbtrOQtGmc7p%2FF2MVgMDXFlwnBnfl4nU5G0%2Fimg.png",
        price: 34000,
        registerDate: "2022년 10월 26일",
        id: "4Kv8liFa7Wwl3paZj1DL"),
    Item(
        title: "세상에서 가장 쉬운 SNS 콘텐츠 디자인 with 캔바",
        description:
            "“디자인의 ‘디’자도 모르지만 ‘캔바’로 디자인 잘만 합니다”     디자인의 기본부터 클릭을 부르는 SNS 콘텐츠 디자인까지  미대 나온 언니가 제대로 알려준다!     캔바는 디자인을 배우지 않은 사람도 전문가처럼 감각적인 결과물을 디자인할 수 있게 도와주는 사이트다. 캔바에서 제공하는 약 80만 개의 템플릿과 1억 개의 사진, 일러스트, 폰트 등의 디자인 소스를 활용하여 인스타그램, 블로그, 유튜브 등 다양한 분야에 필요한 이미지를 쉽고 빠르게 만들 수 있다. 캔바의 가장 큰 차별점은 일러스트가 풍부하고 색감과 디자인이 감각적인 것이다. 사이트뿐만 아니라 스마트폰 앱을 지원하므로 간단한 디자인은 휴대폰으로도 충분히 작업할 수 있다는 것 또한 큰 장점이다.     캔바로 감각적인 디자이너가 되기까지, 단 2주면 충분하다. 이 책은 단순히 캔바의 사용법만을 설명하지 않는다. 디자인에 대한 이해를 시작으로 콘텐츠를 기획하는 방법, 디자인 감각과 실력을 향상시키기 위한 노하우, 작업 시 도움을 얻을 수 있는 참고 사이트까지, 단순히 하나의 이미지를 완성하는 스킬이 아닌 그것을 결과물로 표현하기까지의 과정과 작업자가 갖춰야 할 마인드까지 담았다. 저자가 제시하는 13개의 과제를 직접 따라 만들고 저자가 디자인하는 과정 영상을 참고하며 캔바와 함께해 보자. 2주 후, ‘세상에서 가장 쉬운 셀프 디자인’을 하고 있는 자신의 모습을 발견할 수 있다.",
        brand: "비제이퍼블릭",
        imageUrl:
            "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FdPXSWE%2FbtrHp5TSZZD%2FkkHSKWQtRtK3CLTg4T0Lp0%2Fimg.png",
        price: 21000,
        registerDate: "2022년 7월 21일",
        id: "I4dxxVmvXumpE3wQsJsl"),
    Item(
        title: "예제부터 배우는 거꾸로 파이썬",
        description:
            "*실생활에 쓸모 있는 것만 만든 비전공자 개발 노트*     IT 비전공자라도 프로그래밍 문법을 몰라도  재미있게 코딩하고 원하는 것을 직접 만든다!     이 책은 독학으로 코딩을 공부한 저자가 만든 여섯 가지 파이썬 실생활 예제를 다룬다. 어렵고 불필요한 문법은 30분 만에 끝내고 ‘로또 당첨 지도’, ‘맛집 검색기’, ‘재무제표 추출’, ‘배달 앱 리뷰 시각화’, ‘이메일 자동화’, ‘스포츠 경기 과거 데이터 수집’과 같이 흥미롭고 유용한 예제를 무작정 따라 만들어 보도록 구성했다. 어려운 문법은 필요 없다! 나에게 필요한 기능만 익혀, 일상의 것들을 자동화하고 데이터를 내가 원하는 모습으로 가공 및 활용해 보자. 『예제부터 배우는 거꾸로 파이썬』과 함께라면 혼자서도 충분히 가능하다.     0~1장에서는 저자가 개발을 시작한 이유와 독학한 방법 그리고 어떤 것을 개발했는지를 이야기한다. 2장에서는 실습 예제를 다루기 위한 최소한의 파이썬 개념을 익힌다. 3장에서는 여섯 가지 예제를 따라 만들며 데이터 크롤링과 자동화, 시각화와 API까지 다룬다. 3장의 예제를 모두 따라 만든다면 여러분의 일상 속 적재적소에 코딩을 활용하여 필요한 것을 직접 만들어낼 수 있을 것이다.",
        brand: "비제이퍼블릭",
        imageUrl:
            "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FbryLDA%2FbtrIMBW3FAB%2FeFTxvdukNYKr4X8TmtpDik%2Fimg.jpg",
        price: 23000,
        registerDate: "2022년 8월 19일",
        id: "f8PF9Oha2D2Fwm8kAY6a"),
    Item(
        title: "서버리스 이제는 AWS Lambda로 간다",
        description:
            "5가지 웹 서비스를 직접 만들면서 배우는 서버리스 플랫폼!     AWS Lambda는 이벤트 기반의 서버리스 컴퓨팅 플랫폼이다. 제한된 CPU, 메모리, 수행 시간을 갖지만 사용한 만큼만 비용을 지불하고 요청량에 맞게 인스턴스가 실행되어 빠르게 확장 및 축소할 수 있다. 그래서 Lambda의 한도와 한계를 이해하고 다룰 수 있다면, 다양한 서비스의 시나리오를 구현하면서도 인프라와 비용 걱정을 크게 줄일 수 있다. 빠른 출시를 결심했거나 토이 프로젝트를 진행할 경우라면 서버리스 플랫폼 사용이 큰 도움이 될 것이다.     이 책은 Lambda를 비롯해 AWS가 제공하는 여러 서버리스 플랫폼을 활용한다. 5가지 서비스 예제를 통해 그 예제 안에서 활용하는 서버리스 플랫폼을 소개하고 직접 실습한다. 이해를 돕기 위해 각 장은 예제에 대한 서비스 소개 및 설계와 구현, 로컬 테스트 환경 구축 및 테스트, 서버리스 스택 배포와 모니터링, 상용 확장을 위해 고민해야 하는 요소와 서버리스 서비스의 한계와 한도, 트래픽 규모를 가정하고 이때 발생하는 비용을 계산한다. 저자의 노하우가 듬뿍 담긴 이 책으로 웹 서비스 개발을 준비해 보자.",
        brand: "비제이퍼블릭(BJ퍼블릭)",
        imageUrl:
            "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FbhXdgG%2FbtrQQbRPGNY%2FJFyl2557ljumcBtLInrjQ0%2Fimg.jpg",
        price: 37000,
        registerDate: "2022년 11월 21일",
        id: "ijZSeguHutebaA1n53QN"),
    Item(
        title: "한 권이면 충분해, 프로툴스",
        description:
            "하나씩 따라 하면서 프로툴스의 다양한 기능을 익히는  ‘가장 쉬운 프로툴스 입문 가이드북’     프로툴스는 대표적인 DAW 중 하나이지만 다른 DAW 서적 중에서도 거의 출간되지 못했던 주제입니다. 그리고 출간된 서적들 대부분은 '기능 중심'으로 구성되어 있어 실제 작업에서는 활용하기가 어렵습니다. 더욱이 새로운 버전의 프로툴스가 지속적으로 출시되면서 기존과 비교하여 크게 바뀌었지만 현재까지 출시되어 있는 프로툴스 서적이나 자료는 턱없이 부족한 상황입니다.     이러한 아쉬움을 없애고자 이 책을 출간했습니다. 본서는 프로툴스의 설치 방법과 기본적인 사용법부터 레코딩과 믹싱 등의 다양한 기능, 그리고 새롭게 추가된 기능들을 중심으로 내용을 구성했습니다. 음악 작업 시에 사용되지 않는 불필요한 내용들은 과감하게 생략하고 실제 작업에 꼭 필요한 부분만을 다루었습니다. 또한 단순히 프로툴스라는 DAW의 설명에서 벗어나 실제 워크 플로우에 맞게 배울 수 있기 때문에 프로툴스를 처음 사용하는 사람, 더 나아가 엔지니어 지망생, 프로듀서, 싱어송라이터에게 특히 유용한 책이 될 것입니다.",
        brand: "비제이퍼블릭",
        imageUrl:
            "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FnBSOU%2FbtrNb9iQ2X4%2FBtNV0ZUfJeLaUBUKckf3gK%2Fimg.jpg",
        price: 41000,
        registerDate: "2022년 9월 29일",
        id: "yK7jNVSsycbr3K2AlEYO"),
  ];

  // ItemProvider({reference}) {
  //   itemsReference =
  //       reference ?? FirebaseFirestore.instance.collection('items');
  // }

  Future<void> fetchItems() async {
    // items = await itemsReference.get().then((QuerySnapshot result) {
    //   return result.docs.map((DocumentSnapshot document) {
    //     return Item.fromSnapShot(document);
    //   }).toList();
    // });
    notifyListeners();
  }
}
