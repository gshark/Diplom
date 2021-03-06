package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by shovkoplyas on 05.05.2017.
 */
public class ConstNode extends ASTNode {
    public ConstNode(String text, String type) {
        this.text = text;
        this.type = type;
    }

    @Override
    public List<ASTNode> getChildren() {
        return new ArrayList<>();
    }

    @Override
    public boolean lookLike(ASTNode o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ConstNode constNode = (ConstNode) o;

        return type.equals(constNode.type);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ConstNode constNode = (ConstNode) o;

        if (text != null ? !text.equals(constNode.text) : constNode.text != null) return false;
        return type != null ? type.equals(constNode.type) : constNode.type == null;

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
