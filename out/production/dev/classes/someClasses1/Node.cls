/**
 * Created by mparzych004 on 30.09.2019.
 */

public with sharing class Node {

    public Node left;
    public Node right; // public, bo domyslnie sa private
    public Integer data; //

    public Node(Integer data) {
        this.data = data;
    }



}