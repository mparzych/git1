
public class BT4 {
    public static Node root;


    public void m() {
        BT4 bt = new BT4();
        bt.root = new Node(1);
        bt.root.left = new Node(2);
        bt.root.right = new Node(3);
        bt.root.left.left = new Node(4);
//
//        bfs(bt.root);

        sumOfLastNodesInBT(bt.root);
        System.debug(sum);
    }

    public Integer sum = 0;

    public void sumOfLastNodesInBT(Node node) {
        if (node == null) {
            return;
        }
        if (node.left == null && node.right == null) {
            sum += node.data;
        }
        sumOfLastNodesInBT(node.left);
        sumOfLastNodesInBT(node.right);
    }

    public void bfs(Node node) {
        if (node == null) {
            return;
        }
        bfs(node.left);
        System.debug('abc');
        System.debug(node.data);
        bfs(node.right);
    }

//    public void levelOrder() {
//
//    }

    public void levelOrder() {
        QueueNode q = new QueueNode();

        q.add(root);


//        q.add(root);



    }




}