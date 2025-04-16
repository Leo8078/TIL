a_stack = []  # 스택을 저장할 빈 리스트 생성

def push(push_data):  # 스택에 데이터를 추가하는 함수
    a_stack.append(int(push_data))  # 입력받은 데이터를 정수로 변환하여 스택에 추가
    print(f'삽입과정:{a_stack}')  # 현재 스택의 상태 출력

def pop():  # 스택에서 데이터를 꺼내는 함수
    a = a_stack[-1]  # 스택의 마지막 요소 가져오기
    print(f"계산을 위해 스택에서 빼야하는 값:{a}")  # 꺼낸 값 출력
    a_stack.remove(a_stack[-1])  # 스택에서 마지막 요소 제거
    return a  # 꺼낸 값 반환

# 사용자로부터 후위표기식 입력받기
a = list(input("계산식을 후위표기법으로 입력하세요.\n연산자와 피연산자는 \",\"로 분리해서 입력하세요.\n").split(','))

# 입력받은 후위표기식 계산
for i in a:
    if i == '+' or i == '-' or i == '*' or i == '/':  # 연산자인 경우
        pop_data1 = pop()  # 첫 번째 피연산자
        pop_data2 = pop()  # 두 번째 피연산자
        
        if i == '+':  # 덧셈 연산
            push(pop_data2 + pop_data1)
        elif i == '-':  # 뺄셈 연산
            push(pop_data2 - pop_data1)
        elif i == '*':  # 곱셈 연산
            push(pop_data2 * pop_data1)
        elif i == '/':  # 나눗셈 연산
            push(pop_data2 / pop_data1)
    else:  # 피연산자인 경우
        push(i)  # 스택에 추가
