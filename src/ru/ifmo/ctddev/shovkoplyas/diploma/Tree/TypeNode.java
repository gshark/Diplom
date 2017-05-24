package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by shovkoplyas on 05.05.2017.
 */
public class TypeNode implements ASTNode {


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
