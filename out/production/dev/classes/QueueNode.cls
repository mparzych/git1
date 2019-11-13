/**
 * Created by mparzych004 on 23.10.2019.
 */

public with sharing class QueueNode {
    class Node {
        Node next;
        BT4.Node data;
        Node(BT4.Node data) {
            this.data = data;
        }
    }
    public Node front, rear;


    public void add(BT4 data) {
        Node n = new Node(data);
        if (front == null) {
            front = rear = n;
        }
        else {
            rear.next = n;
            rear = n;
        }
    }

    public void show() {
        Node n = front;
        while (n != null) {
            System.debug(n.data);
            n = n.next;
        }
    }

    public BT4 delet() {
        BT4 x = front.data;
        front = front.next;
        return x;
    }
    // data types
    public Boolean isEmpty() {
        if (front == null) {
            return true;
        }
        return false;
    }

    public void m() {
        Queue q = new Queue();
        q.add(1);
        q.add(2);
        q.add(3);
//        q.delet();
        q.delet();
        q.delet();

        System.debug(q.isEmpty());
    }

}