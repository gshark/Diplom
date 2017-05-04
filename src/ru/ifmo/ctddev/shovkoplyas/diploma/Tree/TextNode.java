package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.List;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public class TextNode implements ASTNode {
    public TextNode(String text) {
        this.text = text;
    }

    @Override
    public List<ASTNode> getChildren() {
        return null;
    }

    String text;

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
        return Color.BLUE;
    }
}
