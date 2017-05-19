package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public class StringNode implements ASTNode {
    public StringNode(ASTNode child) {
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
        return "string";
    }

    @Override
    public Color DSgetColor() {
        return Color.RED;
    }

    @Override
    public String toString() {
        if (child == null)
            return "";
        return child.toString() + ";\n";
    }
}
