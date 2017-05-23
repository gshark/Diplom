package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 23.05.2017.
 */
public class BracketsNode implements ASTNode {
    public BracketsNode(ASTNode child) {
        this.child = child;
    }

    ASTNode child;

    @Override
    public List<ASTNode> getChildren() {
        return Arrays.asList(new ASTNode[]{child});
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        return new DSTreeNode[]{child};
    }

    @Override
    public Object DSgetValue() {
        return "()";
    }

    @Override
    public Color DSgetColor() {
        return Color.LIGHT_GRAY;
    }

    @Override
    public String toString() {
        if (child == null)
            return "";
        return "(" + child.toString() + ")";
    }
}
