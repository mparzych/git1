/**
 * Created by mparzych004 on 30.09.2019.
 */

public with sharing class Stack {

    public Integer[] a = new Integer[1000];
//    public Stack(Integer size) {
//        a = new Integer[size];
//    }

    public Integer top = -1;

    public void add(Integer data) {
        a[++top] = data;
    }

    public Integer pop() {
        return a[top--];
    }

    public Integer peek() {
        return a[top];
    }

    public Boolean isEmpty() {
        return top == -1;
    }




    public void m() {



    }
}