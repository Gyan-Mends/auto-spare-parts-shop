import java.util.Scanner;

public class Stack {
  private int top;
  private int[] stackArray;
  private int maxSize;

  public Stack(int maxSize) {
    this.maxSize = maxSize;
    stackArray = new int[maxSize];
    top = -1;
  }

  public void push(int item) {
    if (isFull()) {
      System.out.println("Stack is full");
    } else {
      top++;
      stackArray[top] = item;
    }
  }

  public int pop() {
    if (isEmpty()) {
      System.out.println("Stack is empty");
      return -1;
    } else {
      int item = stackArray[top];
      top--;
      return item;
    }
  }

  public boolean isEmpty() {
    return (top == -1);
  }

  public boolean isFull() {
    return (top == maxSize - 1);
  }

  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    System.out.print("Enter the size of the stack: ");
    int maxSize = input.nextInt();
    Stack stack = new Stack(maxSize);

    System.out.println("Enter 5 elements to push into the stack: ");
    for (int i = 0; i < 5; i++) {
      int item = input.nextInt();
      stack.push(item);
    }

    System.out.println("Original Stack: ");
    for (int i = 0; i <= stack.top; i++) {
      System.out.println(stack.stackArray[i]);
    }

    System.out.println("Push operation: ");
    stack.push(10);
    for (int i = 0; i <= stack.top; i++) {
      System.out.println(stack.stackArray[i]);
    }

    System.out.println("Pop operation: ");
    stack.pop();
    for (int i = 0; i <= stack.top; i++) {
      System.out.println(stack.stackArray[i]);
    }

    input.close();
  }
}


