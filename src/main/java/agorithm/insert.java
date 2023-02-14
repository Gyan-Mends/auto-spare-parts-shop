package agorithm;

public class insert{
public static void main(String[] args) {
    int[] arr = {1, 2, 3, 4, 5};
    int newElement = 6;
    
    int[] newArr = new int[arr.length + 1];  // create a new array with one additional element
    
    for (int i = 0; i < arr.length; i++) {
        newArr[i] = arr[i];  // copy the elements from the original array to the new array
    }
    
    newArr[arr.length] = newElement;  // add the new element to the end of the new array
    
    // print all the elements in the new array
    for (int i = 0; i < newArr.length; i++) {
        System.out.println(newArr[i]);
    }
}
}
