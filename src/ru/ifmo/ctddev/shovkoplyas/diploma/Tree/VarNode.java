package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 05.05.2017.
 */
public class VarNode implements ASTNode {
    public VarNode(String text, ASTNode type) {
        this.text = text;
        this.type = type;
    }

    @Override
    public List<ASTNode> getChildren() {
        return Arrays.asList(new ASTNode[]{type});
    }

    String text;
    ASTNode type;

    @Override
    public String toString() {
        return text;
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        return new DSTreeNode[]{type};
    }

    @Override
    public Object DSgetValue() {
        return text;
    }

    @Override
    public Color DSgetColor() {
        return Color.GREEN;
    }
}
