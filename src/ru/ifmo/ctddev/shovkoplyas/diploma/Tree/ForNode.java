package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 23.05.2017.
 */
public class ForNode implements ASTNode {
    ASTNode var, statement, from, to;
    String op;

    public ForNode(ASTNode var, ASTNode statement, ASTNode from, ASTNode to, String op) {
        this.var = var;
        this.statement = statement;
        this.from = from;
        this.to = to;
        this.op = op;
    }

    @Override
    public List<ASTNode> getChildren() {
        return Arrays.asList(new ASTNode[]{var, from, to, statement});
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        return new DSTreeNode[]{var, from, to, statement};
    }

    @Override
    public Object DSgetValue() {
        return "for";
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("for ").append(var.toString()).append(" := ");
        sb.append(from).append(" ").append(op).append(" ").append(to).append(" do\n");
        sb.append(statement);
        return sb.toString();
    }

    @Override
    public Color DSgetColor() {
        return Color.blue;
    }
}
