package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public class BinOp extends UniversalNode {
    ASTNode left, right;
    String text;

    public BinOp(ASTNode left, ASTNode right, String text) {
        super(Arrays.asList(new ASTNode[]{left, right}), text);
        this.left = left;
        this.right = right;
        this.text = text;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (left != null)
            sb.append(left.toString());
        else
            sb.append("null");
        sb.append(" ").append(text).append(" ");
        if (right != null)
            sb.append(right.toString());
        else
            sb.append("null");
        return sb.toString();
    }

    @Override
    public boolean lookLike(ASTNode o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BinOp bo = (BinOp) o;
        return bo.text.equals(text)
                && ((bo.left.lookLike(this.left) && bo.right.lookLike(this.right))
                || (bo.left.lookLike(this.right) && bo.right.lookLike(this.left)));

    }
}
