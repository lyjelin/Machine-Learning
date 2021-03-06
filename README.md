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

### Week 4

> 
- Nerual Network
- Application (linear/non-linear/multi-class classification)

이번 챕터들(?)은 크게 어렵거나 복잡하지 않았다. But, just be careful on numbers! 

### Week 5

> 
- Cost Function
- Back Propagation
- Gradient checking ($DVec$ $\approx$ $gradApprox$)
- Random Initialization $\to$ break symmetry
- Training NN Model

`Q : Why Back Propagation was introduced?`

Because Foward Propagation is not efficient in neural network. (Too slow, and require a lot of calculation)

`Q : How to Set & Train NN?`

1. Pick network architecture (# layers, # units)
	- \# input units = dimention of features $x^{(i)}$
    - \# output units = # classes
    - \# hidden units per layer = More da better!
    Default : at least 1 hidden layer, same # of hidden layer units
2. Training NN
	1. Initialize with Random weights
    2. Forward Propagation to get $h_{\theta}(x^{(i)})$ for any x^{(i)}
    3. Implement cost function, $J(\theta)$
    4. Back Propagation for $\frac{\delta}{\delta \Theta}J(\Theta)$
    5. Use Gradient checking (`DVec` = `gradApprox`
    6. Use Gradient descent or advanced optimization function to minimize the cost function 
    
```
for i = 1:m,
   Perform forward propagation and backpropagation using example (x(i),y(i))
   (Get activations a(l) and delta terms d(l) for l = 2,...,L
```

### Week 6

ML **diagnostic** - How to choose best learning algorithm 

> 
- Divide Datasets (Train/Validation/Test)
- `Bias` && `Variance` Tradeoff
- ML problem solving approach
- Precision & Recall & F1-score

#### Evaluate new hypothesis

1. Training + Test Set
	- Learn $\theta$ + minimize $J_{train}(\theta)$
    - Error function to test $J_{test}(\theta)$ : gives proportion of misclassified test data
2. Model + Datasets (Training + Validation + Test)
	- Try range of different degree of polynomials for $h_{\theta}(x)$ 
    - Split datasets into 3 purposes; (i) train (ii) validation (iii) test

``` Training error tends to decrease as d (degree of polynomial) increase ... may lead to overfitting```

#### In terms of Bias VS Variance

3. High `select(Bias, Variance)`
	1. High Bias = **underfitted** (Check `Left` side of graph)
		- $J_{train}(\theta)$  will be high 
    	- $J_{val}(\theta) \approx J_{test}(\theta)$  
	2. High Variance = **overfitted** (Check `Right` side of graph)
		- $J_{train}(\theta)$  will be low 
    	- $J_{val}(\theta) >>> J_{test}(\theta)$  
4. Redularization && select(`Bias`, `Variance`)
	- Try range of $\lambda$ for $J(\theta)$
    - With the $\Theta^{(x)}$, check the $J_{val}(\Theta^{(x)})$
    - Choose the one with lowest $J_{val}(\Theta^{(x)})$
    - Test selected $\Theta^{(x)}$ with $J_{test}(\Theta^{(x)})$
  
	1. Large $\lambda \to$ High Bias $\to$ Underfit
    2. Small $\lambda \to$ High Variance $\to$ Overfit
    ($\lambda$ = regularization parameter)
5. Learning Curves
	- High Bias : Not helpful to get more training datasets
    	- Low training datasets : Causes $J_{train}(\Theta^{(x)})$ to be low && $J_{val}(\Theta^{(x)})$ to be high
        - Large training datasets : Causes both $J_{train}(\Theta^{(x)})$ && $J_{val}(\Theta^{(x)})$ to be high
    - High Variance : Helpful to get more training datasets
    	- Low training datasets : Causes $J_{train}(\Theta^{(x)})$ to be low && $J_{val}(\Theta^{(x)})$ to be high
        - Large training datasets : Causes $J_{train}(\Theta^{(x)})$ increase with training set but $J_{val}(\Theta^{(x)})$ continues to decrease
        
#### Neural Networks

6. Small/Large Neural Networks
- Small : Fewer parameters - more prone to underfitting - cheaper
- Large : More parameters - more prone to overfitting - expensive

Overfitting problem $\to$ fails to generalize to new samples

#### Precision, Recall, F1-score

= Used to handle skewed Data ( TP | FP | FN | TN )

- Precision (P) = $\frac{TP}{# \ predicted \ positives}$
- Recall (R) = $\frac{TP}{# \ actual \ positives}$
- F1-score = $\frac{2PR}{P+R}$

### Week 7

> 
- Support Vector Machine $\approx$ Large Margin Classifier
- Kernel (Linear, Gaussian, etc.)


SVM $\leftarrow$ supervised learning model for classification & regression problems

```The Goal of SVM = create optimal decision boundary (hyperplane) ```

The distance from the hyperplane to closest data point is the `margin` of the classifier.

**Kernel** is a method of using a linear classifier to solve a non-linear problem

Through kernel and similarity function, it allows the non-linearly seperated data to transform as linearly seperated data on feature space of higher dimension (i.e. map from 1D $\to$ 2D)

### Week 8

> Unsupervised Learning
- K-mean
- PCA

K-mean algorithm is `Clustering of closely packed unlabeled data points`. 
1. Randomly initialize K-cluster centroids ($u_1, u_2, ..., u_k$)
2. Repeat (until $u_k$ doesn't change)

	for i = 1 to m :
		c(i) := index (from 1 to k) of cluster centroid closest to x^(i)
    for k = 1 to K :
    	u_k := average points assigned to cluster k

3. Pick centroid that gives lowest $J(C^{(1)}, ..., C^{(m)}, u_1, ..., u_k)$

\+ ㄱr끔 노동이 필요할 때도 있다 : For choosing # of clusters... 

Principle Componenet Analysis (i) reduces dataset from $n$-Dimension to $k$-Dimension (ii) Compute the `covariance matrix` (iii) Computer `eigenvectors` of matrix $\Sigma$ (This is not $\sum$ symbol)

PCA $\neq$ Linear Regression
- PCA는 trying to reduce the distance between best-fit line & data point(s)
- Linear Regression은 trying to find the best-fit line

**Don't use PCA to prevent overfitting problem**

### Week 9

> 
- Detecting Anomaly
- Multivariate Gaussian Distribution
- Recommender System `추천시스템` 

i.e. Set Model $p(x)$, 
- if $p(x) < \epsilon \to$ flag `anomaly`
- if $p(x) \ge \epsilon \to$ `OK`

#### Gaussian Distribution 
`Density Formula` : $p(x; \mu , \sigma^2)$ = $\frac{1}{\sqrt{2 \pi} \sigma}$ $\cdot$ $exp(-\frac{(x - \mu)^2}{2 \sigma^2})$

`Mean` : $\mu$ = $\frac1m\sum^m_{i=1}x^{(i)}$, `Standard Deviation` : $\sigma^2$ = $\frac1m\sum^m_{i=1}(x^{(i)}-\mu)^2$

#### Anomaly Detection Algorithm

1. Choose features $x^{(i)}$
2. Fit parameters $\mu_1, ..., \mu_n$, $\sigma^2_1, ..., \sigma^2_n$
3. Compute $p(x)$ with new $x^{(i)}$ :
$\prod^n_{j=1}p(x; \mu , \sigma^2) = \prod^n_{j=1} \frac{1}{\sqrt{2 \pi} \sigma_j}$ $\cdot$ $exp(-\frac{(x - \mu_j)^2}{2 \sigma^2_j})$
4. Anomaly if $p(x) < \epsilon$

\+ Anomaly Detection is useful if we have very **small** number of positive examples ($y=1$) && **large** number of negative examples

### Week 10

#### Gradient Descent

> 
- Batch Gradient Descent
- Stochastic Gradient Descent
- Mini-batch Gradient Descent

#### Online Learning

Online Learning is useful as it can adapt on varying users

> 
- Multiple Machines
- Multiple Core Machines - Less latency then using multiple machines

For Large scale ML $\to$ Map reduce && Summation is used to speed up learning algorithm. 
If we are parallizing over multiple machines, the training sets will be splitted according to the number of machines used. And have each of the machines compute the sum of Cost function $J_{train}(\theta)$ for subdivided training sets of data. Then, the partial derivative terms will be computed by $\frac{\delta}{\delta \theta_j}J_{train}(\theta)$. These terms will be send to centralized server and the server adds up to get **overall cost function** && **overall partial derivatives**.

### Week 11

> Photo OCR

## Complete :D

> 
1. Supervised Learning
2. Unsupervised Learning
3. Applications && tips

약 3달 코스를 끝냈다! ~~사실 교수님 목소리 너무 자장가같아서 다시 재생한게 약 40%...~~ 물론 계속 remind 하려면 필요할때마다 다시 강의듣기 해야겠지만, 머신러닝 basic 정리를 다시 해서 처음 배웠을 때보단 머리에 든게 많아지고 탄탄해진 느낌..? 

![](https://images.velog.io/images/elin16/post/b44157d5-e24b-4d8c-a093-f8e88ecb496b/ML-AN-ThankYou.png)

(강의 완료하고 Thank you message를 보니까 뭔가 뿌듯)




