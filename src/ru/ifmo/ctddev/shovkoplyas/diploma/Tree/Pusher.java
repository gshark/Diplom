package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import java.util.HashMap;

/**
 * Created by shovkoplyas on 24.05.2017.
 */
public class Pusher {
    ASTNode root;
    final HashMap<String, ASTNode> types;

    public Pusher(ASTNode root) {
        this.root = root;

        types = new HashMap<>();
    }

    public void push() {
        dfs(root);
    }

    void dfs(ASTNode v) {
        if (v == null) {
            return;
        }
        if (v instanceof VarNode) {
            VarNode cur = (VarNode) v;
            if (cur.getType() != null) {
                if (types.containsKey(cur.name)) {
                    if (!cur.getType().equals(types.get(cur.name))) {
                        //TODO;
                    }
                }
                types.put(cur.name, cur.getType());
            } else {
                if (types.containsKey(cur.name)) {
                    cur.setType(types.get(cur.name));
                } else {
                    System.err.println(cur.toString());
                }
            }
        }
        for (ASTNode child : v.getChildren()) {
            dfs(child);

        }
    }
}
