# [Coursera] Machine-Learning

### Intro

Since last winter of 2020, Professor Ng's **Machine Learning** Course was added into my ToDo List. I have to admit that I have been keep postponing it with 'many' excuses; moving back to Hong Kong, assignments, project, exams, etc... 

Now on Jul 7, 2020 I am finally enrolling it!

Actually, at the beginning of my 3rd year, I have already taken Machine Learning course `COMP3314` at my University. It was really interesting course with Prof. Dirk, as tried his best to deliver many exercises as possible so we can have better understanding on each topic. 

But it has been 1 year since I took it, so I decided to attend Coursera's ML course to **recall back what I've learnt**, as well as **solidify my AI&ML knowledge through this chance!**

앤드류 응 (Andrew Ng) 교수님의 머신러닝 수업 2020년 하반기부터 계속 들어야지, 들어야지 하다가 할게 많다는 핑계로 반년간 미루다가 이번 여름 방학 때는 꼭 듣기로 결심하고 바로 enrolling을 했다.

사실 컴퓨터 공학생이라면 한번쯤 자의던 타의던 학교에서 인공지능 and/or 머신러닝/딥러닝 수업을 들어봤을 것 같다 (혹은 들을 예정이거나). 트렌드이기도 하고, 재밌어보이기도 하고!

그래서 작년 3학년 1학기에 독일 교수님이 진행하시는 머신러닝 `COMP3314` 수강! 사실 수업 자체는 흥미로웠다. 다만 학기 중에는 아무래도 여러 전공 과목들을 같이 들어서 한 수업에만 몰입할 수 없기도 하고, 1년이 지나고 보니 생각보다 기억이 잘 나지 않아서 **이번 코세라 머신러닝 코스로 제대로 정리해보고 싶은 마음이 크다 :D**

### Week 1

> 
- Cost Function $J$($θ_0$, $θ_1$)
- Gradient Descent
- Linear Regression

1주차 강의에는 가장 기초적인 개념들을 꼼꼼하게 설명하고 퀴즈로 다지기까지 땅땅 해주셨다. 학교에서 머신러닝 수업을 들을 때 이 부분이 은근 정리가 안됬었던 부분이라 과제하고 시험 칠 때 조금 해맸었는데... _~~우리 교수님이 설명을 못하셨던 걸까~~_

### Week 2

> 
- Gradient descent (multivariate)
- Feature scaling 
- Mean Normalization

2주차 강의들을 들으면서 작년 수업 때 헷갈렸던 개념들이 확확 이해되서 놀랐다. 그냥 외운다기보다, 왜 이 공식이 필요하고 사용한다면 어떤 benefit이 있는지도 같이 이해할 수 있어서!

_~~또, 분명 이해했다고 생각했던 feature scaling이 마지막 퀴즈 부분에서 '잘' 이해하고 넘어간 게 아니라는 걸 알 수 있어서 다행...~~_

#### Feature Scaling && Mean normalization

- Feature scaling : **dividing the input values by the range (max - min)** of the input variable
- Mean normalization : **replace $x_i$ into $x_i$ - $u_i$** to make features have approx. zero mean (where $u_i$ is the avg. feature of all the values for $feature (i)$)
- Learning rate

`Q : Why do we need it?`

By transforming the input variables in roughly same range, we can **speed up gradient descent**

`Q : How is it acheived?` 

Because θ descends quickly on small ranges and slowly on large ranges

_\+ Octave tutorial by Prof. Ng was the most detailed and well explained programming lectures I've ever attended before throughout my whole University life :ㅇ_

### Week 3

> 
- Decision Boundary (linear & non-linear)
- Logistic Regression
- Classification (binary, multi-class)
- Overfitting

Linear Regression에 사용한 cost function을 그대로 사용하면 그래프 모양 $\neq$ convex

Optimization algorithm 사용 이유 
$\to$ $\alpha$ manually select 안해줘도 됨
$\to$ but, 디버깅이 복잡하다

Actually, the ~~slightly~~ varying cost function for linear/logistic regression needed some time to digest. As well as $regularization\ \& \ cost\ function$ part too

Note : 퀴즈 1회차 도전 실패하고 8시간 기다려서 넘어갔다 (Logistic Regression ~ cost function ~ Gradient descent 부분 확실히 짚고 넘어갈 것)
