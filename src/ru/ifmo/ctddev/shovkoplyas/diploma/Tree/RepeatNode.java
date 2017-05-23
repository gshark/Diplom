package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 23.05.2017.
 */
public class RepeatNode implements ASTNode {
    ASTNode expression, statement;

    public RepeatNode(ASTNode expression, ASTNode statement) {
        this.expression = expression;
        this.statement = statement;
    }

    @Override
    public List<ASTNode> getChildren() {
        return Arrays.asList(new ASTNode[]{expression, statement});
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        return new DSTreeNode[]{expression, statement};
    }

    @Override
    public Object DSgetValue() {
        return "repeat";
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("repeat\n").append(statement);
        sb.append("until ").append(expression);
        return sb.toString();
    }

    @Override
    public Color DSgetColor() {
        return Color.blue;
    }
}
