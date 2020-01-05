class Mbtis {
  static const Map<String, Map> Types = {
    "INTJ": {
      "matching": {
        "best": ["ESTJ", "INTJ", "ISTP", "ENTJ"],
        "normal": ["INTP", "INFJ", "INFP", "ENFP"],
        "bad": ["ESFJ", "ISFJ", "ESTP", "ESFP", "ISFP", "ENTP", "INFP", "ENFJ"],
      },
      "type": "분석형",
//      TODO translate to korean
      "character": "Architect",
      "color": 0xFF5F384C,
      "summary": "상상력이 풍부하며 철두철미한 계획을 세우는 전략가형.",
      "details": [
        "전세계의 2%로 매우 드물며 여성만의 비율로 따진다면 0.8%로 매우 드물다.(대한민국은 1%)",
        "아주 이론적이다.",
        "성격을 알기 힘들기로 악명 높다.",
        "학구열이 강하며 특히 순수학문(자연과학, 철학)을 좋아한다.",
        "이해와 규칙 없이 무언가를 맹목적으로 따르는 것을 거부한다.",
        "쉬운 일보단 필요 이상으로 어려운 일을 즐긴다.",
        "스스로를 현실주의자로 착각하지만, 실상은 사실성, 합리주의, 고증에 기반한 이상주의자에 가깝다.",
        "이론이나 과학에서만큼은 극도의 현실을 추구하나, 사회 현실에 대한 불합리성을 용납하지 않는다.",
        "MBTl 유형 중 대학수학능력시험 성적이 제일 높은 유형이다.",
        "MBTl 유형 중 평균적인 IQ가 INTP와 함께 가장 뛰어나다.",
        "정치 성향 면에서 보수 우익 성향이 강한 것으로 나타났다. I, N, J를 공유하는 INFJ와는 정반대의 결과이다.",
        "합리적인 울타리 내에서 공상하는 것을 즐긴다.",
        "이성적으로 틀렸다고 판단되는 것은 사회적 결속을 막론하고 그것이 틀렸음을 분명히 하려고 한다.",
        "어떤 상황이 바뀌어야 하는 합리적인 이유를 제시해준다면 계급, 신념, 전통까지도 기꺼이 버릴 사람이다.",
        "규범적인 주장에 합리적인 근거가 없으면 수준 낮은 것으로 취급한다. (ex. '남자는 울면 안된다', '교실 앞문은 선생님 외 출입을 자제한다')",
        "대학생일 경우, 교수하고의 갑론을박을 마다하지 않는다.",
        "어떤 사회적 관습을 두고 완전히 멍청한 것이라고 생각하며 비웃을 수도 있다.",
        "어떤 문장을 문학적이고 감성적인 방향으로 해석하기보단 객관적이고 논리적으로 해석한다.",
        "엄밀하지 못하거나 정리되지 않은 시스템을 완벽하게 해체하고 재구성하는 데 열중한다.",
        "자기 전공 지식에 관련하여 얕은 지식으로 가십 떠는 걸 몹시 꺼림칙해 하며, 참을 수 없을 땐 진지하게 대꾸하기도 한다.",
        "기술적으로 더 우월한 방법과 합리적인 사상을 제정하기 위해 정통성과 공감대를 묵살하고 일방적으로 행동하는 경향이 있다.",
        "감성적인 사람과 거리를 두려고 한다.",
        "평범한 대화가 감정적으로 변질되면, 일단 말이 안 통한다고 여긴 뒤 자신의 판단을 유보한다.",
        "현실적인 해결을 위해 겉으로 세고 단도직입적으로 나온다.",
        "현실적인 조언이 더 나은 방법이라고 생각하기 때문에, 포용적인 미사여구가 붙은 위로들을 비논리적이라고 폄하한다.",
        "특히 민감한 성격을 가진 타인에게 무감각하며, 얼토당토 않은 말을 하면 논리를 써서라도 짓밟으려고 한다.",
        "의아하게도 직장·학교에서만큼은 신뢰가 두터워 많은 사람을 끌어들이는 리더가 되기 쉽다. 그러나 보통 자취를 드러내지 않고 비선실세로 군림한다.",
        "어떤 상황의 잡음을 잘 걸러내며, 난장판이 된 인간관계를 풀기 위해 끌어내야 할 핵심 단서가 뭔지 식별한다.",
        "일에 대해서는 결단력이 있고 성실하지만, 인간관계에서도 이론이 있다고 믿는 나머지 대인적으로 우유부단하다.",
        "사고 방식이 매우 합리적이지만 겉으로 드러나는 비인간적인 면모 탓에 사회에서는 이들을 과소평가 하려고 한다.",
        "통찰력과 분석력 부문에서만큼은 그 고집이 대단하다.",
        "책벌레(혹은 공부벌레)라는 칭호를, 상대는 부정적인 의도로 건넸으나 본인은 착각하며 몹시 자랑스럽게 여긴다.",
        "상대적으로 덜 성과적인 방법으로 자리를 꿰찬 사람과 어울리려 하지 않는다.",
        "놀라울 정도로 호기심이 강하지만 쓸데없이 힘을 낭비하지는 않는다.",
        "시간 낭비가 발생하는 상황을 싫어한다.",
        "사적인 잡담조차 시간낭비로 여긴다.",
        "혹시 모를 변수를 고려하여 비상 계획을 준비하는 편이다.",
        "효율을 극도로 추구하지만, 그 방식이 너무 정교하고 엄밀한 나머지 상대는 지루한 방법이 아니냐고 반문할 수 있다.",
        "노는 자리를 어색해하며 집단에 적응하기 위한 신뢰 구축 과정(상사를 향한 고개 숙임, 회식 등)과 같은 전초 작업을 언짢아 한다.",
        "외향성을 내재적으로 발휘하는 걸 어려워하지만, 외향적인 사람의 패턴을 외워버린 뒤에 따라하는 건 잘한다.",
        "능력 있는 부하에 대한 신뢰도는 상사에 대한 충성도보다 높다.",
        "상대방이 능력 있는 사람이라는 걸 알아보면, 다른 사람들에게 그의 능력을 적극적으로 알리려고 한다.",
        "상호 비판에 관대하다. 그러나 그저 시간만 질질 끄는 비판은 묵살한다.",
        "무조건 맹신만 해주는 비즈니스 파트너는 이들 눈에 띄기 어렵다.",
        "사람을 보는 기준이 높아서인지 친구가 별로 없는 편이다.",
        "지인은 많이 두는 편이다. 단지, 아주 극소수만을 친구로 생각할 뿐.",
        "점찍어둔 사람과의 상호 발전을 강하게 지향한다. 이 관계로써 어느 유형보다 강렬한 우정이 성사된다. 그러나 그 격려를 거부하면 일반 지인으로 도태시킨다.",
        "기계나 소프트웨어 엔지니어, 변호사, 프리랜서 컨설턴트로서 외로운 늑대 같은 직업을 선호한다.",
        "상대방의 독립성을 존중하는 걸 넘어 장려하기까지 한다.",
        "비즈니스가 아닌 단순 집단 사교에서 개인의 독립성과 자유가 침해된다고 느끼면 아예 사회관계를 끊어버린다.",
        "독립성을 제지하는 권위주의적 리더를 거부한다. 따라서 화이트 칼라에서는 승진이 더딜 수 있다.",
        "결정을 가볍게 하지 않는다.",
        "연애에 있어서는 순애보다. 그런데 계산적인 방법을 동원한다. 매우 바보 같은 방법이지만 의외로 파트너의 만족감은 높다고 한다.",
        "사랑이나 친밀함을 그 자체로 보기보단 생물학·심리학적 유기성이 있다고 믿는 편이다.",
        "오랫동안 함께 해온 사람이어도 더 이상 함께 할 수 없다고 판단되면 단칼에 끊을 각오를 한다.",
        "말과 행동에 있어서 정직함을 추구하기 때문에 연애를 어렵게 만들기도 한다.",
        "앞에 나서는 것을 두려워 한다.",
        "자신의 능력에 대해 확고한 신념을 가진다.",
        "자신감이 지나친 나머지 가끔 어떤 사안의 모든 관련 문제들을 해결했다고 착각한다.",
        "유명해지는 걸 싫어하여 사회적인 저명성은 매우 낮지만, 매우 영향력 있는 역할을 한다.",
        "안정성을 위해 합리성을 버리는 행위를 경멸한다.",
        "부모로서 자녀에게 육체적인 애정을 드러내지 않는 편이며 논리적인 인간을 만들려고 계획한다.",
        "부모로서 자녀에게 환상, 동심에 의한 잘못된 정보보단 진실을 아는 것이 더 낫다는 전제 하에 의사소통이 이루어진다. (ex. '산타는 없어.')",
        "정작 가까운 사람들을 이해하려는 것에 낯설고 불편해 한다.",
        "모든 것에 대해 의문과 재평가가 열려 있어야 된다고 생각한다.",
        "어려운 난관은 자극제가 되며 창의성을 많이 요하는 도전에 응하는 것을 즐긴다.",
        "하고자하는 의지가 강하다.",
        "의미가 있는 일은 열성으로 한다.",
        "사소한 본능적 행동에 '왜?'라는 질문을 들이대는 걸 싫어한다. ",
        "영화를 볼 때도 고증을 중시하며 무언가 잘못된 장면이 없나 찾아 본다.",
        "여기 나열된 단점을 모두 자랑스러워하고 있을 것이다.",
      ],
    },
    "INTP": {
      "matching": {
        "best": ["ENTP", "INTP", "INTJ"],
        "normal": [
          "ESTJ",
          "ISTJ",
          "ESTP",
          "ENTJ",
          "ENFJ",
          "INFJ",
          "ENFP",
          "INFP"
        ],
        "bad": ["ESFJ", "ISFJ", "ISTP", "ESFP", "ISFP"],
      },
      "type": "분석형",
      "character": "Logician",
      "color": 0xFF5F384C,
      "summary": "끊임없이 새로운 지식에 목말라 하는 혁신가형.",
      "details": [
        "MBTl 유형 중 평균적인 IQ가 INTJ와 함께 가장 뛰어나며 게으른 천재가 많다.",
        "행동하기 보다 책을 통해서 배운다.",
        "높은 직관력으로 통찰하는 재능과 지적관심이 많다.",
        "조용하고 말이 없으나 자기의 관심 분야에서는 말을 많이 한다.",
        "정서표현이 별로 없어 친해지기 전에는 이해하기 어렵다.",
        "모든 유형중 제일 변덕을 부리기 쉽다.",
        "기분이나 감정도 생각을 통해서 한다.",
        "지나치게 지적이고 추상적이며 설명이 너무 이론적이다.",
        "황당무계한 공상을 잘 한다.",
        "비현실적이며 비약이 심하다.",
        "타인에게 별로 관심이 없다.",
        "생각은 창의적인데 실천이 부족하다.",
        "조직이나 단계, 계통 등에 약하다.",
        "즉흥적이다.",
        "매뉴얼을 보기 싫어한다.",
        "정장을 싫어한다.",
        "뻔한 이야기나 서론이 긴 것을 참기 어려워한다.",
        "주관이 뚜렷하고 자신은 합리적이라 생각한다.",
        "꼭 필요한 것 아니면 망각을 사용(使用)한다.",
        "머릿속에 생각만 해두고 있다가 막판에 후다닥 일 처리를 한다.",
        "한끼 때우면 된다.",
        "미각을 중시한다.",
        "남들 좋아하는 연예인, 악세사리, 유행 등에 관심 없다.",
        "추리소설을 좋아한다.",
        "소설 자체를 하류로 여기는 수도 있다.",
        "잡담 모임 후에는 허무감을 느낀다.",
        "친한 친구라도 별일 없으면 연락을 잘 안한다.",
        "공상과 상상속에 있을 때가 많다.",
        "신의 존재에 대해 회의감을 가지고 있다.",
        "패션감각이 나쁘다.",
        "자신의 아이디어 등에 사로잡혀 다른 일을 하는 동안이라도 일을 먼저 멈춰두고서 철저히 생각한다.",
        "모든 중복을 혐오한다.상기된 것 중 두번 쓰인 것을 체크하고 있었을 것이다.",
      ]
    },
    "ENTJ": {
      "matching": {
        "best": ["ESTJ", "ISTP", "ENTJ", "ENFJ", "INTJ"],
        "normal": ["ISTJ", "ESTP", "ENTP", "INTP", "INFJ", "ENFP"],
        "bad": ["ESFJ", "ISFJ", "ESFP", "ISFP", "INFP"],
      },
      "type": "분석형",
      "character": "Commander",
      "color": 0xFF5F384C,
      "summary":
          "대담하면서도 상상력이 풍부한 강한 의지의 소유자로 다양한 방법을 모색하거나 여의치 않을 경우 새로운 방안을 창출하는 리더형.",
      "details": [
        "타고난 지도자형.",
        "조직적, 체계적, 계획적이다.",
        "일은 일대로 하고 욕은 욕대로 먹을 수 있다.",
        "너무 완벽을 추구하기 때문에 남이 비집고 들어갈 틈이 없다.",
        "상상을 많이 한다.",
        "혼자 있는 것을 싫어하는 편이다.",
        "인간 교류를 할 때 감정 교류보단 아이디어를 나누고 협력해서 이루는 것을 좋아한다.",
        "동물을 별로 좋아하지 않는다.",
        "고집이 세고, 호기심이 많다.",
        "지적 욕구가 강하다.",
        "감정표현이 솔직해서 타인이 상처를 받을 수 있다.",
        "사람보다 일을 중시한다.",
        "항상 계획을 하고 실행한다.",
        "일상적인 반복되는 일을 싫어한다.",
        "가끔 엉뚱할 때가 있다.",
        "변화 있는 생활을 즐긴다.",
        "어려운 일을 만나도 자극이 되어 쉽게 처리한다.",
        "지적 능력 향상에 노력하고자 한다.",
        "권위적이지 않다.",
        "미래에 대한 꿈이 크다.",
        "솔직하고 결단력, 통솔력이 있으며 거시적 안목으로 일을 추진해 나감.",
        "일이 틀어지느니 미운털 박히고 말 것이다.",
      ]
    },
    "ENTP": {
      "matching": {
        "best": ["ENTP", "INTP", "INFJ"],
        "normal": [
          "ESTJ",
          "ISTJ",
          "ESTP",
          "ESFP",
          "ENTJ",
          "ENFP",
          "INFP",
          "ENFJ"
        ],
        "bad": ["ESFJ", "ISFJ", "ISTP", "ISFP", "INTJ"],
      },
      "type": "분석형",
      "character": "Debater",
      "color": 0xFF5F384C,
      "summary": "지적인 도전을 두려워하지 않는 똑똑한 호기심형.",
      "details": [
        "5대양 6대주가 활동 무대.",
        "복잡한 문제일수록 쉽게 해결하지만 그 해결이 허술한 해결인 경우도 많다.",
        "팔방미인, 다재다능.",
        "항상 새로운 것을 추구한다.",
        "마음만 먹으면 못하는 것이 없다.",
        "단기적인 문제 해결에 있어 효율 및 성과는 뛰어나지만, 장기적인 노력이 필요한 경우 노력을 꾸준히 투입하기가 어렵다. 게으르다",
        "이것저것 손대는 것이 많다.",
        "일을 시작하는 데 있어 추진력은 좋지만 뒷심이 부족하다. 즉, 용두사미가 되기 쉽다.",
        "반복적으로 꾸준히 해나가면 해결되는 문제보다는 차라리 비반복적인 어려운 문제를 해결하는 것이 더 수월하다.",
        "처음 보는 사람에게 말 거는 데 거리낌이 없다.",
        "분위기나 타인의 생각을 읽고 이해하는 능력이 뛰어나고, 대화를 매력적으로 이끌어 나간다.",
        "E 타입이기에 기본적으로 외향적이긴 하나 E 타입 중에서는 내향 성향이 가장 강한 편이다.",
        "개인주의 성향이 강하며 독립적이다.",
        "인간관계가 자유롭다.",
        "온갖 것에 관심이 많다.",
        "위험을 감수해서라도 새로운 시도를 하는 편이며 모험심이 강하다.",
        "자기애가 강하다.",
        "한 번 들은 얘기를 또 듣는 건 싫어한다.",
        "단어 하나로 2시간도 이야기 한다.",
        "초, 중, 고등학교의 규칙생활이 힘들 수 있다.",
        "일상적이고 반복되는 일은 지루하고 힘들어 한다.",
        "'007 제임스 본드형'이다.",
        "똑같은 강의를 반복해서 하는 것은 피곤하다.",
        "관심분야는 대단히 박식, 관심 없는 분야는 대단히 무식.",
        "경쟁심이 강한 편이다.",
        "빠뜨리거나 빼먹는 일이 많다.",
        "다른 누구의 설득되지 않는 권유나 참견은 질색이다.",
        "자신의 가치관이 우선이며 기존의 전통이나 권위, 규범은 답답해하는 편.",
        "새로운 아이디어나 창의적인 발상을 잘 낸다.",
        "자신의 판단에 따라 행동한다.",
        "끈기 있게 한 가지 일에 몰두하지 못한다.",
        "말을 나오는 대로 막 할 수 있다.",
        "대략적인 이해가 뛰어나다.",
        "길게 설명하는 건 짜증난다.",
        "남이 하는 거 보고 맞춰 가는 분야의 일과는 최악의 상성.",
        "12%의 자뻑 때문에 88%의 장점을 무시당한다.",
        "자기주장이 강한 것에 비해 비판에 대한 수용이 빠르다.",
      ]
    },
    "INFJ": {
      "matching": {
        "best": ["ENTP", "ENFP", "INFJ", "INFP", "ENFJ"],
        "normal": ["ISFJ", "ESFP", "ISFP", "ENTJ", "INTJ", "INTP", "ISTJ"],
        "bad": ["ESTJ", "ESFJ", "ESTP", "ISTP"],
      },
      "type": "외교형",
      "character": "Advocate",
      "color": 0xFF56AC89,
      "summary": "조용하고 신비로우며 샘솟는 영감으로 지칠 줄 모르는 이상주의자.",
      "details": [
        "가장 흔치 않은 성격 유형으로 인구의 채 1%도 되지 않는다.",
        "영감력이 뛰어나고 깊이 있는 통찰력이 있다.",
        "현실의 유행에 대단히 둔감하고 현실과 거리가 멀다.",
        "보이지 않는 정신세계를 추구한다.",
        "의미부여 왜 사나? 등에 관심이 많다.",
        "초, 중, 고, 생들이 방황을 할 수가 있다.",
        "생각이 많아 현실적응이 어려울 수 있다.",
        "같은 나이에 비해서 조숙해 보인다.",
        "문제의 본질을 생각한다.",
        "비유와 은유를 잘한다.",
        "종교적인 신념이 강하다.",
        "사람과의 교제 시작이 어렵다.",
        "잡념 때문에 수면 지장을 가져온다.",
        "본인이 하는 말을 남들이 잘 알아듣지 못하는 경우가 있다.",
        "현실과 타협이 힘들다.",
        "싫은 내색을 못하며 마음의 상처도 잘 받는다.",
        "나서기보다는 협조자로 적극적으로 돕는다.",
        "자아와의 갈등이 많다.",
        "사람에 대한 통찰력을 지녔다.",
        "옳다고 확신이 생긴 신념은 끝까지 밀고 나간다.",
        "정치 성향 면에서 진보주의 성향이 제일 강한 것으로 나타났다. I, N, J를 공유하는 INTJ와는 정반대의 결과이다.",
        "의미 없다고 느끼는 일에 ? 가 따른다.",
        "현실에서도 이상을 꿈꾼다.",
        "기도나 기 수련에 관심이 많다.",
        "조용히 책보는 것을 좋아 한다.",
        "늘 존재에 대해 생각해 보고 생 과 사 영적인 문제에 관심이 많다.",
        "언행이 고상한 것을 좋아한다.",
      ]
    },
    "INFP": {
      "matching": {
        "best": ["ENFP", "INFP", "ENFJ", "INFJ"],
        "normal": ["ISFJ", "ESFJ", "ESFP", "ISFP", "ENTP", "INTP"],
        "bad": ["ESTJ", "ISTJ", "ESTP", "ISTP", "ENTJ", "INTJ"],
      },
      "type": "외교형",
      "character": "Mediator",
      "color": 0xFF56AC89,
      "summary": "상냥한 성격의 이타주의자로 건강하고 밝은 사회 건설에 앞장서는 낭만형.",
      "details": [
        "현실감각이 둔하다. (가계부를 소설로 쓴다.)",
        "몽상가적 기질이 많다.",
        "인간과 종교(정신세계)에 관심이 많다.",
        "분위기를 잘 탄다. (분위기가 좋으면 끝까지 남는다.)",
        "아름다움과 추함, 선과 악, 도덕과 비도덕에 민감하게 반응한다.",
        "신념이 뚜렷하여 겉으로는 주장을 안해도 속으로는 열정이 있다.",
        "가치 있는 일에는 생명도 바친다.",
        "비판에 매우 민감하게 반응하며 대부분 개인적인 관점에서 직관적으로 해석하는 경향이 있다.",
        "내면의 세계를 추구하여 늘 무엇을 갈구하고 추구해 나간다.",
        "규칙을 몸서리 치듯 싫어하며 반복되는 일상적인 생활을 싫어한다.",
        "맡겨진 일에 대해서는 지나치게 완벽주의적으로 나가는 경향이 있다.",
        "즉흥적이며 변화가 비슷하다.",
        "내면의 갈등이 심하여 감정의 기복이 심하다.",
        "일을 잘 벌이나 마무리가 서툴다.",
        "여행을 좋아하고, 영화, 음악, 책을 좋아한다. (창의적이고 예술적이다.)",
        "계절의 변화에 민감하다.",
        "상대방의 말에 민감하다.",
        "자신이 하고있는 일에 불만족을 느낄 확률이 높다.",
        "자신이 뭔가 특별한 존재라고 생각한다.",
        "자신의 가치를 타인의 가치보다 높게 평가하는 경향이 있다.",
        "어느 부분에 대해서는 융통성이 아주 없는 편이다.",
        "상대방을 배려해서 빙빙 돌려서 은유적으로 의사 표현한다.",
        "맘에 맞는 사람 만나면 밤을 새워가며 이야기한다.",
        "논리적이기보다는 감정적이다.",
        "아이디어가 많으나 실행에 잘 옮기지 못한다.",
        "감정조절 자체는 오히려 능숙한 편이지만, 정서가 워낙 복잡해 남들 눈엔 감정조절이 미성숙해 보이기 쉽다.",
        "대인관계에서 트러블이 생기면 밤을 새워 곱씹다가 병이 나는 수가 있다.",
        "일을 취미처럼 하고 싶다. 막상 취미가 일이 되면 힘들어진다.",
        "확실한 비전은 있으나 불확실한 현실.",
        "익숙하지 않은 사람과 대화하고 나면 집에 오는 길에 그 사람의 심정을 무한상상한다.",
        "비문학보다는 문학을 선호한다.",
      ]
    },
    "ENFJ": {
      "matching": {
        "best": ["ISFJ", "ENFJ", "ENTJ", "INFJ", "ENFP", "INFP"],
        "normal": ["ESFJ", "ESFP", "ISFP", "INTP", "ISTJ", "ENTP"],
        "bad": ["ESTJ", "ESTP", "ISTP", "INTJ"],
      },
      "type": "외교형",
      "character": "Protagonist",
      "color": 0xFF56AC89,
      "summary": "넘치는 카리스마와 영향력으로 청중을 압도하는 리더형.",
      "details": [
        "마음이 약하고 남의 의견에 동화를 잘하는 편이다",
        "말로 표현을 잘하고 생각이나 마음을 잘 연다",
        "적극적이고 추진력이 강한 편이다",
        "좀 어렵게 생각되는 일도 되는 쪽으로 몰고간다",
        "일의 결과보다는 사람과의 인화를 더 중요시하는 편이다",
        "사전 계획을 세우고 그에 따라 행하고자 한다",
        "화가나면 겉으로 표현하지 않고 묵묵히 참아낸다",
        "타인에게 무척 사교적이지만 집에 있는 아이들에게는 안 그럴 수 있다",
        "상처를 받으면 오랜시간 가슴아파한다",
        "현실보다는 더 나은 삶 이상을 추구한다",
        "맺고 끊는 것이 분명하지 못함",
        "정, 눈물, 동정심이 많음",
        "상대방의 말에 민감하다",
        "사람을 섬기기 위해서 세상에 나왔음",
        "사람을 좋아하고 비판적인 시각보다는 긍정적으로 보려는 시각이 강함",
        "사람에 대해 맹목적 이상화 경향이 있다",
        "타인에게 인정과 칭찬을 받는 일에만 열중할 수 있다",
        "사람을 위해 봉사하는 분야에 능력이 있다",
        "사람과 사람을 잘 엮는다",
        "감정의 기복이 심하다",
      ]
    },
    "ENFP": {
      "matching": {
        "best": ["INFJ", "INFP", "ENFJ", "ENFP", "ESFJ"],
        "normal": ["ENTJ", "ENTP", "INTJ", "INTP", "ESFP", "ISFP"],
        "bad": ["ISTJ", "ESTJ", "ISTP", "ESTP", "ISFJ"],
      },
      "type": "외교형",
      "character": "Campaigner",
      "color": 0xFF56AC89,
      "summary":
          "창의적이며 항상 웃을 거리를 찾아다니는 활발한 성격으로 사람들과 자유롭게 어울리기를 좋아하는 넘치는 열정의 소유자.",
      "details": [
        "감정이 얼굴에 잘 드러난다.",
        "새로운 시도를 좋아한다.",
        "계획하기보다는 그때그때 일을 처리하는 편이다.",
        "새로운 사람 만나기를 좋아한다.",
        "감동을 잘하고 눈물도 잘 흘린다.",
        "돈 개념이 희박하다. 돈을 모으기 힘들 수 있다.",
        "감정의 기복이 심하다.",
        "거절을 잘 못한다.",
        "상대방의 말에 민감하나 기분이 나쁘지 않은 척 한다.",
        "내면에 열정을 지녔다.",
        "위기 대처능력이 뛰어나다.",
        "사람을 기쁘게 해주는 타고난 능력이 있다.",
        "행사나 일을 잘 주선한다.",
        "놀다가도 몰입이 안되고 지금 무엇하고 있는 건가? 라는 생각이 들 때가 있다.",
        "멋 내는 것을 좋아한다.",
        "양보를 잘하며 상대방과의 싸움을 시작할 때에는 심장부터 뛴다.",
        "단순암기에 약하다.",
        "인생을 즐겁게 살려고 한다.",
        "선생님이 마음에 들면 하기 싫은 과목도 잘한다.",
        "하기 싫은 것에 대한 인내력이 부족하다.",
        "좋아하는 사람과 싫어하는 사람의 구별이 심한 편이다.",
        "반복적인 일상을 힘들어 한다.",
        "분위기를 잘 띄운 후에 본인은 빠진다.",
      ]
    },
    "ISTJ": {
      "matching": {
        "best": ["ESTJ", "ISTJ", "INTJ", "ISTP", "ESTP"],
        "normal": ["ENTJ", "INTP", "ENFJ", "INFJ", "ISFJ", "ISFP", "ENTP"],
        "bad": ["ESFJ", "ESFP", "ENFP", "INFP"],
      },
      "type": "관리자형",
      "character": "Logistician",
      "color": 0xFF52A9AB,
      "summary": "사실에 근거하여 사고하며 이들의 행동이나 결정 사항에 한 치의 의심을 사지 않는 현실주의자형.",
      "details": [
        "오래된 조직을 좋아한다.",
        "부하직원을 부모와 자녀관계같이 돌보려고 한다.",
        "선입견이 강하다.",
        "친숙하지 않은 장소에 나서기를 주저한다.",
        "지나고 난 다음에 따지는 편이다.",
        "주어진 업무나 책임을 끝까지 완수한다.",
        "우리나라에서는 장남 같다, 장녀같다 라는 소리를 잘 듣는다.",
        "변화에 적응이 더디다.",
        "원리 원칙적이다.",
        "교통체증을 미리 계산해서 약속시간을 지킨다.",
        "이유없이 돌아다니지 않는다.",
        "대인관계 폭이 자꾸 좁아지고 대신 할 일이 늘어 난다.",
        "실수 한 것을 참지 못하고 즉각 수정하기를 원한다.",
        "남들이 속을 모른다라고 말함",
        "틀에 박힌 규칙적인 일을 좋아한다.",
        "휴일에도 집에서 주로 지낸다.",
        "평소에 많이 참다가 폭발하면 상당히 무섭다.",
        "논리적, 합리적이지 않으면 인정하지 않는다.",
        "웃음이 적다.",
        "반대성향을 지닌 사람과 처음에는 원만히 지내나 결국 멀어짐.",
        "잘못했다는 건 인정하면서도 미안하다, 잘못했다는 말을 잘 못한다.",
        "정리정돈을 해 놓는 것이 우선이다.",
        "직설적인 표현을 많이 하는 편이다.",
        "한국에서 제일 많은 유형이다.",
      ]
    },
    "ISFJ": {
      "matching": {
        "best": ["ISFJ", "ENFJ", "ESTJ"],
        "normal": [
          "ESFJ",
          "ESTP",
          "ISFP",
          "INFJ",
          "INFP",
          "ESFP",
          "ISTJ",
          "ISFP"
        ],
        "bad": ["ENTJ", "INTJ", "ENTP", "INTP", "ENFP"],
      },
      "type": "관리자형",
      "character": "Defender",
      "color": 0xFF52A9AB,
      "summary": "소중한 이들을 수호하는 데 심혈을 기울이는 헌신적이며 성실한 방어자형.",
      "details": [
        "자기 의견을 끝까지 주장하지 못하고 다수 의견에 따르게 된다",
        "여러 사람 앞에서 말하기 힘들어한다",
        "끈기 있고 성실하며, 안정감이 있다",
        "치밀성과 반복을 요하는 일을 끝까지 해나가는 인내력이 있다",
        "보수적이며 새로운 변화를 좋아하지 않는다",
        "조직에 안정감을 준다",
        "자기주장이 강한데 비하여 표현이 적어 속병이 많다.(위장병, 심장병 등)",
        "많은 것을 가슴에 묻어 둔다",
        "남들은 좋으나 본인이 힘들다",
        "남에게 의존하는 것을 좋아한다",
        "나와 타인의 감정에 민감하다",
        "책을 목차서부터 읽기 시작하여 끝까지 읽는다",
        "집에 있는 것이 편하다",
        "무슨 일을 할 때 먼저 주변 정리부터 한다",
        "여럿이 모여 떠드는 것 보다는 1 : 1 대화가 좋다",
        "남에게 상처 줄까봐 말조심한다",
        "남에게 싫은 소리 잘 못하고 싫은 소리를 들으면 상처를 많이 받는다",
        "여럿의 대화 시 침묵을 지킨다",
        "여행 시 짐이 많다",
        "어른들이 좋아하나 본인은 힘들다",
        "가정적인 부모다",
        "거짓말보다 무례한 게 더 나쁘다.",
        "가치관이 뚜렷한 편이나 다수의 사람들이 반대하면 기꺼이 수정한다.",
        "타인의 의견을 귀담아 들어준다.",
        "말의 내용은 둘째치고 말투가 기분 나쁘면 그건 실례다.",
        "참고 참았다가 확 터뜨리는 편이다.",
        "파격적인 것을 그닥 선호하지 않는다.",
        "아는 범위내에선 눈치가 몹시 빠르다.",
        "부적절한 단어사용 한 번으로 그 사람에 대한 평가가 바닥까지 추락할 수 있다.",
        "정이 많지만 남용하지는 않는다.",
        "정해진 틀을 깨기를 망설인다.",
        "신세지는 것을 어려워한다.",
      ]
    },
    "ESTJ": {
      "matching": {
        "best": ["ISTJ", "ESFJ", "ISFJ", "ENTJ", "INTJ", "ISTP"],
        "normal": ["ENTP", "INTP", "ESTP", "ESFP", "ISFP"],
        "bad": ["ESTJ", "ENFJ", "INFJ", "INFP", "ENFP"],
      },
      "type": "관리자형",
      "character": "Executive",
      "color": 0xFF52A9AB,
      "summary": "사물이나 사람을 관리하는 데 타의 추종을 불허하는 뛰어난 실력을 갖춘 관리자형.",
      "details": [
        "감정이 잘 드러나 직설적인 언어로 표현한다",
        "모든 게 제자리에 있어야 하며 계획이 틀어지는 것을 싫어한다.",
        "리더 역할을 선호하지는 않으나 막상 맡으면 잘한다",
        "논리적, 분석적 객관적이며 분명한 규칙을 중요시하고 그에 따라 행동하고 일을 추진하고 완성한다.",
        "정치 성향 면에서 중도 성향이 최하위, 보수주의 성향은 가장 강한 것으로 나타났다.[1]",
        "고집이 있지만 논리적으로 긍정하게 되면 더 이상 고집을 피우지 않는다",
        "호불호가 확실하다",
        "일을 잘해 놓고도 존경받는 일이 드물 수 있다",
        "집단에서 분위기 보다는 목적의식을 중요시한다",
        "경영자적인 재질을 지녔다",
        "한번 시작한 일을 철저하게 뿌리뽑는다",
        "전철을 탈 때도 어느 칸에 타야 갈아타기 편한지 계산하고 탄다",
        "예약과 계획의 생활화",
        "독창력, 창의력이 부족하다",
        "말이 빠르고 걸음이 빠르다",
        "외로움을 별로 타지 않는다",
        "지배하려는 성격이 있어도 양보는 잘 하지 않는다",
        "감동시키기보다는 이해시키길 원한다",
        "싸움을 싫어하지만 싸워서 지는 것도 싫어한다",
        "가만히 있으면 피곤하다",
      ]
    },
    "ESFJ": {
      "matching": {
        "best": ["ESTJ", "ENFP"],
        "normal": ["ISFJ", "ESFJ", "ENFJ", "INFP", "ISFP", "ISTP", "ESFP"],
        "bad": ["ESTP", "ENTJ", "INTJ", "ENTP", "INTP", "INFJ", "ISTJ"],
      },
      "type": "관리자형",
      "character": "Consul",
      "color": 0xFF52A9AB,
      "summary": "타인을 향한 세심한 관심과 사교적인 성향으로 사람들 내에서 인기가 많으며, 타인을 돕는데 열성적인 세심형.",
      "details": [
        "신나고 재미있는 사람이다",
        "스트레스를 받으면 누구를 만나야 한다",
        "강의 때 고개를 제일 많이 끄덕이어 강사를 즐겁게 한다",
        "준비성이 철저하며, 참을성이 많고 타인을 잘 돕는다",
        "남에게 동조하는 경향이 뛰어나며 사람들과의 상호 활동에서 기력이 생긴다",
        "타인의 인정을 받는 것에 아주 민감하다",
        "보수적이며, 좋은 음식을 좋아하고, 봉사를 좋아하며 재물을 모으는 것을 즐김",
        "자신이 존경하는 사람이나 물건을 이상화하는 경향이 있다",
        "타인을 돕고 싶은 욕구 때문에 자신의 업무를 소홀히 할 수 있다",
        "잔걱정이 많다",
        "가족들에게 잔소리가 심하다",
        "집단의 일이나 목적을 개인의 것보다 앞세운다",
        "조화와 균형을 중요시한다",
        "싫은 소리하기 싫어한다",
        "사람들 사이에서 중재자 역할을 잘한다",
        "자녀와 정서적인 독립이 안되어 걱정이 끊이지가 않는다",
        "별명이 수도꼭지 - 눈물이 많다",
        "리액션이 반응의 전부일 때가 잦다 (리액션 봇)",
        "1대1보다는 다수 속에 있어야 좋다",
        "말수가 적은데 비해 존재감은 크다",
        "말수가 적은 것은 할 말이 곧장 떠오르지 않아서이다",
        "말싸움에서 상대방이 논리를 들이대면 분하고 못 알아먹겠어서 울화가 터진다",
        "아무 생각없이 멍 때리기를 잘한다",
        "100분동안 싸우곤 뭐가 문제였는가 곰곰이 돌이켜보는 것은 10분만에 끝난다",
        "한 번 생활습관이나 버릇을 들이면 잘 못 바꾼다",
        "새로 나온 신조어나 유행어 정도가 아니라면 별로 단어의 의미를 깊게 파악하려 하지 않는다",
        "자고로 말이란 의사소통만 할 수 있을 정도면 된다",
        "유행에 민감하고 잘 따른다",
        "뉴스를 안 보더라도 가십거리가 될만한 것은 챙겨둔다",
        "완전범죄에 실패할 확률이 높다",
        "거짓말을 공들여 할수록 티가 난다",
        "진지한 이야기보다 가벼운 이야기가 좋다",
        "자기주장이 강하진 않다.",
      ]
    },
    "ISTP": {
      "matching": {
        "best": ["ESTJ", "ISTJ", "ENTJ", "ESTP"],
        "normal": ["ESFJ", "ISFP", "INTJ", "ISFJ"],
        "bad": ["ISTP", "ESFP", "ENTP", "INTP", "ENFJ", "INFJ", "ENFP", "INFP"],
      },
      "type": "탐험가형",
      "character": "Virtuoso",
      "color": 0xFFDFC109,
      "summary": "대담하고 현실적인 성향으로 다양한 도구 사용에 능숙한 탐험형.",
      "details": [
        "소비성 경향이 많다.",
        "마음에 없는 얘기를 상대방 기분 때문에 하지 않는다.",
        "일반적으로 조용한 편이나 필요에 따라 사교적이다.",
        "손재주가 뛰어 나다.",
        "개인주의적 성향이 강하다.",
        "충동에 따라 행동하기 때문에 언제라도 일자리를 박차고 떠날 수 있다.",
        "틀에 박힌 생활을 싫어한다.",
        "고집이 있고 주장이 강하다.",
        "말이 없고 내색을 않는다.",
        "객관적 원리에 관심이 많다.",
        "도구를 다루는데 관심이 있다.",
        "느낌과 감정 타인에 대한 마음을 표현하기 어려워한다.",
        "정의감이 있으나 직설적인 말로 타인의 감정을 상하게 할 수 있다.",
        "정밀을 요하는 일을 잘 해낸다.",
        "타인의 일에 무관심한 편이다.",
        "모험과 스릴을 즐긴다.",
        "관심분야가 아니면 쳐다보지도 않는다.",
        "생각은 적극적인데 행동은 소극적.",
        "노력을 절약하면서(게으르다는 소리를 들음) 일의 능률을 높인다.",
        "모든 유형 중 최고의 승부사",
        "띄워준다고 크게 뜨지도 않고 욕먹는다고 크게 가라앉지도 않는다.",
        "잘 안 운다.",
        "모든 감정표현 특히 애정표현이 적다. (혹은 서툴다)",
        "남 눈치 잘 안 보는데 그렇게 눈에 띄는 행동을 하지도 않는다.",
        "거짓말/립서비스를 잘 못한다.",
        "어떤 일에 꽂히면 질리지도 않고 매우 꾸준히 한다. (심지어 장기적으로)",
        "계획보다 무의식적인 패턴으로 살아간다.",
        "고정관념이 없는 편이다.",
      ]
    },
    "ISFP": {
      "matching": {
        "best": ["ESFP", "ISFP"],
        "normal": [
          "ESTP",
          "ESTJ",
          "ESFJ",
          "ISTP",
          "ENFJ",
          "INFJ",
          "INFP",
          "ISFJ",
          "ISTJ",
          "ENFP"
        ],
        "bad": ["ENTJ", "INTJ", "ENTP", "INTP"],
      },
      "type": "탐험가형",
      "character": "Adventurer",
      "color": 0xFFDFC109,
      "summary": "항시 새로운 것을 찾아 시도하거나 도전할 준비가 되어 있는 융통성 있는 성격의 매력 넘치는 예술가형. ",
      "details": [
        "삶의 현재를 즐기는 사람이다.",
        "다른 사람의 부탁을 거절하기 어려워한다.",
        "자신을 내세우지 않는다. 자기 자랑이 없다. ",
        "마음이 순하고 따뜻하며 정이 많다.",
        "남을 잘 믿고 의심하지 않는다. 사기 당할 확률이 높다.",
        "누구하고나 어떤 사회에서나 맞추어 가며 살 수 있다.",
        "규칙 틀에 묶이는 것을 싫어한다.",
        "추진력, 결정력이 부족하다.",
        "조용히 있다가 무대에서 끼를 발휘한다 - 몰입이 특징 ",
        "결단력이 부족하고 끊고 맺는 맛이 없다.",
        "자연적인 것, 목가적인 것, 전원적인 것을 갈구",
        "생각은 많고 행동은 부족하다.",
        "지나치게 타인을 배려한다.",
        "대중 앞에 선뜻 나서지 못한다.",
        "싸울 때 감정이 앞서 논리적이지 못하다.",
        "계획성이 없다.",
        "공감 능력이 뛰어나다.",
        "남에게 싫은 소리 못하고 속으로 삭인다.",
        "타인을 무조건 이해해 주고 자기 의견과는 상관없이 따라가 준다.",
        "즐기는 것에 대한 호기심이 많다.",
        "예술적인 기질이 있다. (연극배우, 가수, 피아니스트 등)",
        "포용력과 이해력이 많다.  ",
        "경쟁하는 분위기보다는 편안한 분위기에서 능력을 발휘한다.",
        "조직에서 시간이 오래 지나야 인정을 받는다.",
        "딱딱하고 사무적인 사람을 싫어한다.",
      ]
    },
    "ESTP": {
      "matching": {
        "best": ["ISTJ", "ESTP", "ISTP", "ESFP"],
        "normal": ["ESTJ", "ISFP", "ENTJ", "ENTP", "INTP", "ISFJ"],
        "bad": ["ESFJ", "INTJ", "ENFJ", "INFJ", "ENFP", "INFP"],
      },
      "type": "탐험가형",
      "character": "Entrepreneur",
      "color": 0xFFDFC109,
      "summary":
          "벼랑 끝의 아슬아슬한 삶을 진정으로 즐길 줄 아는 이들로 명석한 두뇌와 에너지, 그리고 뛰어난 직관력을 가지고 있는 유형.",
      "details": [
        "정보통이다.",
        "내기를 좋아한다.",
        "삶을 즐기며 산다.",
        "사람이나, 사건에 대해 선입감이 없고 개방적이다.",
        "스릴을 좋아한다.",
        "노는 것과 술자리에 도가 텄다.",
        "책을 통해서 보다는 직접 경험을 선호한다.",
        "한 가지에 집중하는 것은 지겹다.",
        "즉흥적인 행동에 의존.",
        "일을 마지막에 폭발적으로 한다.",
        "흥미 위주의 욕구가 많다.",
        "묶여 있지 않은 자유로운 상태일 때 일의 능률이 오른다.",
        "일반 보병보다 특공대 체질.",
        "생각이 단순하며 깊게 생각하는 것이 어렵다.",
        "현실적인 계산이 눈에 보인다.",
        "제멋대로 자유분방.",
        "현 우리나라의 학교 분위기에 적응하기 어려움을 느낀다.",
        "자신감이 항상 철철 넘친다.",
        "공부보다는 스포츠와 같은 활동적인 것에 집중력이 있다.",
        "주위의 사람이나 일어나는 일에 관심이 많다.",
        "조금 깊게 생각하는 것을 싫어하는 경향이 있다.",
        "자극적인 것을 좋아한다.",
        "오늘 할 일을 내일로 미룬다.",
        "성취욕이 강하다.",
        "새로운 것에 대한 도전 욕구가 강함.",
        "타인에게 선입견이 별로 없고 개방적이다.",
        "일을 한꺼번에 처리한다.",
        "감정을 필터링없이 있는 그대로 표현하여 상대방이 상처를 받을 수 있다.",
        "따지고 분석하고 이해가 돼야 수긍한다.",
      ]
    },
    "ESFP": {
      "matching": {
        "best": ["ESTP", "ISFP"],
        "normal": [
          "ESTJ",
          "ESFJ",
          "ISFJ",
          "ESFP",
          "ENTP",
          "ENFJ",
          "INFJ",
          "ENFP",
          "INFP"
        ],
        "bad": ["ISTJ", "ISTP", "ENTJ", "INTJ", "INTP"],
      },
      "type": "탐험가형",
      "character": "Entertainer",
      "color": 0xFFDFC109,
      "summary": "주위에 있으면 인생이 지루할 새가 없을 정도로 즉흥적이며 열정과 에너지가 넘치는 연예인형.",
      "details": [
        "타인을 기쁘게 해줄 깜짝쇼를 준비하면서 즐거워한다",
        "내 자신의 이야기를 상대방을 가리지 않고 아무에게나 잘 털어놓는다",
        "자신에게 너그럽고 다른 대외적인 책임감이 따르는 일은 열성을 가지고 일한다",
        "무계획적이고 충동적인 여행을 즐긴다",
        "발등에 불이 떨어져야 행동에 옮긴다",
        "직설적으로 말하고 흥분을 잘하며 목소리가 크다",
        "집에 있으면 무기력한 느낌이 들고 쉬는 날은 거의 외출",
        "청소나 빨래를 제시간에 하지 않고 몰아서 꼭 해야 할 때 한다",
        "내일은 내일의 태양이 뜬다",
        "싫고 좋은 사람이 분명하며 표정에 나타난다",
        "정이 많고 건망증이 심하다",
        "거절을 잘 못한다",
        "잘 먹고, 잘 자고, 생각이 단순하다. 고민하다가 그냥 잠든다",
        "혼자 있는 것을 힘들어한다",
        "조직생활 보다는 자유로울 때 능력을 발휘한다",
        "정작 하고 싶은 말은 못한다",
        "기분파, 돈 있으면 일단 쓰고 본다",
        "이야기 할 때 요점과 더불어 부연 설명을 많이 덧붙인다",
        "귀가 얇다.( 상황에 따라, 주위 사람들의 반응에 따라 잘 변한다.)",
        "틀에 박힌 것 싫어하고, 계획에 따라 하는 것 힘들어한다",
      ]
    },
  };

  static const Map<String, List> TypesGroupBy = {
    "Analysts": ["INTJ", "INTP", "ENTJ", "ENTP"],
    "Diplomats": ["INFJ", "INFP", "ENFJ", "ENFP"],
    "Sentinels": ["ISTJ", "ISFJ", "ESTJ", "ESFJ"],
    "Explorers": ["ISTP", "ISFP", "ESTP", "ESFP"],
  };
}
