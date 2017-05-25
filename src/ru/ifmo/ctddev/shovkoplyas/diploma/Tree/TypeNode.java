package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by shovkoplyas on 05.05.2017.
 */
public class TypeNode extends ASTNode {


    @Override
    public List<ASTNode> getChildren() {
        List<ASTNode> res = new ArrayList<>();
        if (leftBound != null)
            res.add(leftBound);
        if (rightBound != null)
            res.add(rightBound);
        if (children != null)
            res.addAll(children);
        if (ofWhat != null)
            res.add(ofWhat);
        return res;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TypeNode typeNode = (TypeNode) o;

        if (isArray != typeNode.isArray) return false;
        if (isRange != typeNode.isRange) return false;
        if (text != null ? !text.equals(typeNode.text) : typeNode.text != null) return false;
        if (leftBound != null ? !leftBound.equals(typeNode.leftBound) : typeNode.leftBound != null) return false;
        if (rightBound != null ? !rightBound.equals(typeNode.rightBound) : typeNode.rightBound != null) return false;
        if (children != null ? !children.equals(typeNode.children) : typeNode.children != null) return false;
        return ofWhat != null ? ofWhat.equals(typeNode.ofWhat) : typeNode.ofWhat == null;

    }

    @Override
    public boolean lookLike(ASTNode o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TypeNode typeNode = (TypeNode) o;
        if (isArray) {
            if (!typeNode.isArray) return false;
            if (children.size() != typeNode.children.size()) return false;
            for (int i = 0; i < children.size(); i++) {
                if (!children.get(i).lookLike(typeNode.children.get(i))) {
                    return false;
                }
            }
            return true;
        }
        if (isRange) {
            if (!typeNode.isRange) return false;
            return leftBound.lookLike(typeNode.leftBound) && rightBound.lookLike(typeNode.rightBound);

        }
        return text.equals(typeNode.text);

    }


    String text;
    boolean isArray;
    boolean isRange;
    ConstNode leftBound;
    ConstNode rightBound;
    List<ASTNode> children;
    ASTNode ofWhat;

    public TypeNode(String text, List<ASTNode> children, ASTNode ofWhat) {
        this.text = text;
        this.isRange = false;
        this.isArray = true;
        this.children = children;
        this.ofWhat = ofWhat;
    }


    public TypeNode(String text) {
        this.text = text;
        this.isRange = false;
        this.isArray = false;
    }

    public TypeNode(String text, ASTNode leftBound, ASTNode rightBound) {
        this.text = text;
        this.isRange = true;
        this.isArray = false;
        this.leftBound = (ConstNode) leftBound;
        this.rightBound = (ConstNode) rightBound;
    }

    @Override
    public String toString() {
        if (isRange) {
            return leftBound.toString() + ".." + rightBound.toString();
        }
        if (isArray) {
            String res = "array[";
            for (ASTNode child : children) {
                res += child.toString() + ',';
            }
            res = res.substring(0, res.length() - 1);
            res += "] of " + ofWhat.toString();
            return res;
        }
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
        return Color.ORANGE;
    }
}
