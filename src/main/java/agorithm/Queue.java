package agorithm;

import java.util.Scanner;

public class Queue {
    private int[] items;
    private int front;
    private int rear;
    private int size;

    public Queue() {
        items = new int[5];
        front = 0;
        rear = -1;
        size = 0;
    }

    public void push(int item) {
        if (size == 5) {
            System.out.println("Queue is full");
            return;
        }

        rear = (rear + 1) % 5;
        items[rear] = item;
        size++;
    }

    public int pop() {
        if (size == 0) {
            System.out.println("Queue is empty");
            return -1;
        }

        int item = items[front];
        front = (front + 1) % 5;
        size--;
        return item;
    }

    public void delete(int item) {
        int i = front;
        while (i != rear) {
            if (items[i] == item) {
                break;
            }
            i = (i + 1) % 5;
        }
        if (i == rear && items[i] != item) {
            System.out.println("Item not found");
            return;
        }
        while (i != rear) {
            items[i] = items[(i + 1) % 5];
            i = (i + 1) % 5;
        }
        rear = (rear - 1 + 5) % 5;
        size--;
    }

    public static void main(String[] args) {
        Queue queue = new Queue();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("1. Push");
            System.out.println("2. Pop");
            System.out.println("3. Delete");
            System.out.println("4. Quit");

            System.out.print("Enter your choice: ");
            int choice = scanner.nextInt();

            if (choice == 1) {
                System.out.print("Enter the item to push: ");
                int item = scanner.nextInt();
                queue.push(item);
            } else if (choice == 2) {
                int item = queue.pop();
                if (item != -1) {
                    System.out.println("Popped item: " + item);
                }
            } else if (choice == 3) {
                System.out.print("Enter the item to delete: ");
                int item = scanner.nextInt();
                queue.delete(item);
            } else if (choice == 4) {
                break;
            } else {
                System.out.println("Invalid choice");
            }
        }

        scanner.close();
    }
}
