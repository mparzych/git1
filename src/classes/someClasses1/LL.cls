
public with sharing class LL {

    public LLNode head;

    public void traverse(LLNode h) {
        LLNode n = h;
        while (n != null) {
            System.debug('n = ' + n.data);
            n = n.next;
        }
    }

    public void rem(LLNode head) {
        LLNode n = head;
        while (n.next != null) {
            n = n.next;
        }
        n.next = null;
    }

    public String removeD(String s) {
        Set<String> strings = new Set<String>(); // nie moze byc nazwy set


        String s2 = '';


        for (Integer i = 0; i < s.length(); i++) {
            String s3 = s.substring(i, i + 1);

            if (!strings.contains(s3)) {
                s2 += s3;
            }

            strings.add(s3);
//
        }

        return s2;
//        return s.substring(0, 1);
    }

    public void splitVoid(String s) {
        String[] arr = s.split('');
        System.debug(arr);


    }

    public void addB(Integer data) {
        LLNode newNode = new LLNode(data);
        newNode.next = head;
        head = newNode;
    }

    public void revLL(LLNode node) {
        if (node == null || node.next == null) {
            return;
        }
        revLL(node.next.next);
        System.debug(node.data);
    }

    static LLNode removeF(LLNode head) {
        LLNode du = new LLNode(0);
        du.next = head.next;
        head = head.next;
        return du.next;
    }


    public void m() {
        LL ll = new LL();

        ll.head = new LLNode(1);
        ll.head.next = new LLNode(2);
        ll.head.next .next = new LLNode(3);
        ll.head.next .next.next = new LLNode(4);
        ll.head.next .next.next.next = new LLNode(5);

//        ll.addB(5);
//        ll.addB(6);

        ll.traverse(ll.head);

//        ll.rem(ll.head);

//        ll.head = removeF(ll.head);
//        ll.traverse(ll.head);

        LLNode head2 = ll.evenOdd(ll.head);

        ll.traverse(head2);

        System.debug('----');

    }


    public LLNode evenOdd(LLNode head) {
        LLNode odd = head, even = head.next, tempEven = odd;

        while (odd != null && even != null) {
            odd.next = even;
            even.next = odd;
            odd = odd.next;
            even = even.next;
        }
        // 1 -> 2 -> 3 -> 4 -> 5
        return tempEven;

    }


}