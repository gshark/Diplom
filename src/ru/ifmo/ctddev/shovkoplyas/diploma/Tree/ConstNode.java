package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.List;

/**
 * Created by shovkoplyas on 05.05.2017.
 */
public class ConstNode implements ASTNode {
    public ConstNode(String text, String type) {
        this.text = text;
        this.type = type;
    }

    @Override
    public List<ASTNode> getChildren() {
        return null;
    }

    String text;
    String type;

    @Override
    public String toString() {
        return text;
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        return new DSTreeNode[0];
    }

    @Override
    public Object DSgetValue() {
        return text;
    }

    @Override
    public Color DSgetColor() {
        return Color.PINK;
    }
}
