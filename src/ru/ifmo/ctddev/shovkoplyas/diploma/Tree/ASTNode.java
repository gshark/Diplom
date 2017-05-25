package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.util.List;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public abstract class ASTNode implements DSTreeNode {
    public abstract List<ASTNode> getChildren();
    public boolean lookLike(ASTNode o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        List<ASTNode> l1 = getChildren();
        List<ASTNode> l2 = o.getChildren();
        if (l1.size() != l2.size()) return false;
        for (int i = 0; i < l1.size(); i++) {
            if (!l1.get(i).lookLike(l2.get(i))) {
                return false;
            }
        }
        return true;
    }
}
