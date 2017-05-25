package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public class TextNode extends ASTNode {
    public TextNode(String text) {
        this.text = text;
    }

    @Override
    public List<ASTNode> getChildren() {
        return new ArrayList<>();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TextNode textNode = (TextNode) o;

        return text != null ? text.equals(textNode.text) : textNode.text == null;

    }

    @Override
    public boolean lookLike(ASTNode o) {
        return equals(o);
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
