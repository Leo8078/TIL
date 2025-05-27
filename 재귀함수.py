##재귀함수란?
#자기 자신을 다시 호출하는 함수
#함수 안에서 자기 자신을 호출해서 문제를 더 작고 단순한 문제로 쪼개서 해결하는 방식
#재귀함수는 두 가지 핵심 요소로 구성됨
#1. 기저 조건
# - 재귀 호출을 멈추는 조건, 없으면 무한히 반복되며 에러 발생 
#2. 재귀 호출
# - 함수를 자기 자신 안에서 호출, 매번 더 쉬운(작은) 문제로 나아감


#수학적 팩토리얼을 이용한 재귀 함수
# 5! = 5x4x3x2x1 = 120

def factorial(n):
    # 기저 조건: n이 0이나 1이면 1을 반환
    if n == 0 or n == 1:
        return 1
    else:
        # 재귀 호출
        return n * factorial(n - 1)

# 사용자로부터 입력 받기
n = int(input("팩토리얼을 계산할 숫자를 입력하세요: "))

# 결과 출력
print(f"{n}! = {factorial(n)}")


#트리(Tree) 구조란?
#트리는 계층 구조를 표현하는 자료구조, 그중 가장 기본적인 형태가 이진 트리
#각 노드는 최대 2개의 자식 노드(왼쪽, 오른쪽)를 가짐
#루트(root): 트리의 가장 위에 있는 노드
#리프(leaf): 자식이 없는 노드

# 트리 탐색의 종류
#전위 순회 : 부모 → 왼쪽 → 오른쪽
#중위 순회 : 왼쪽 → 부모 → 오른쪽
#후위 순회 : 왼쪽 → 오른쪽 → 부모

# 재귀로 트리 탐색 
# 이진 트리 노드 정의
class Node:
    def __init__(self, data):
        self.data = data
        self.left = None  # 왼쪽 자식
        self.right = None  # 오른쪽 자식

# 전위 순회: 루트 → 왼쪽 → 오른쪽
def preorder(node):
    if node:
        print(node.data, end=' ')       # 1. 루트 처리
        preorder(node.left)             # 2. 왼쪽 재귀 호출
        preorder(node.right)            # 3. 오른쪽 재귀 호출

# 중위 순회: 왼쪽 → 루트 → 오른쪽
def inorder(node):
    if node:
        inorder(node.left)              # 1. 왼쪽 재귀 호출
        print(node.data, end=' ')       # 2. 루트 처리
        inorder(node.right)             # 3. 오른쪽 재귀 호출

# 후위 순회: 왼쪽 → 오른쪽 → 루트
def postorder(node):
    if node:
        postorder(node.left)            # 1. 왼쪽 재귀 호출
        postorder(node.right)           # 2. 오른쪽 재귀 호출
        print(node.data, end=' ')       # 3. 루트 처리


#예제 트리 구성 
#        A
#       / \
#      B   C
#     / \   \
#    D   E   F


# 트리 구성
root = Node('A')
root.left = Node('B')
root.right = Node('C')
root.left.left = Node('D')
root.left.right = Node('E')
root.right.right = Node('F')

# 출력 확인
print("전위 순회:")
preorder(root)   # A B D E C F

print("\n중위 순회:")
inorder(root)    # D B E A C F

print("\n후위 순회:")
postorder(root)  # D E B F C A

