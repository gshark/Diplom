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
        return left.toString() + " " + text + " " + right.toString();
    }
}
