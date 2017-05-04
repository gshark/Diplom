package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.List;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public class UniversalNode implements ASTNode {
    List<ASTNode> children;

    @Override
    public String toString() {
        String res = "";
        for (ASTNode ast : children)
            if (ast != null)
                res += ast.toString();
        if (res.endsWith("."))
            res = res.substring(0, res.length() - 3) + ".\n";
        return res;
    }

    public UniversalNode(List<ASTNode> children, String text) {
        this.children = children;
        this.text = text;
    }

    String text;

    @Override
    public List<ASTNode> getChildren() {
        return children;
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        if (children == null) {
            return new DSTreeNode[0];
        }
        return children.toArray(new DSTreeNode[children.size()]);
    }

    @Override
    public Object DSgetValue() {
        return text;
    }

    @Override
    public Color DSgetColor() {
        return Color.ORANGE;
    }
}
