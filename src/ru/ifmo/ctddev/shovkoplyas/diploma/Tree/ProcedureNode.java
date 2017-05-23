package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 17.05.2017.
 */
public class ProcedureNode implements ASTNode {
    public ProcedureNode(String name, ASTNode params, ASTNode block) {
        this.name = name;
        this.block = block;
        this.params = params;
    }

    public ProcedureNode(String name, ASTNode params) {
        this.name = name;
        this.params = params;
    }

    @Override
    public List<ASTNode> getChildren() {
        List<ASTNode> res = new ArrayList<>();
        if (params != null) {
            res.add(params);
        }
        if (block != null) {
            res.add(block);
        }
        return res;
    }

    String name;
    ASTNode params, block;

    @Override
    public String toString() {
        String p = "";
        if (params != null)
            p = params.toString();

        if (block != null) {
            return String.format("procedure %s(%s);\n%s", name, p, block.toString());
        }
        return String.format("%s(%s)", name, p);
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        List<ASTNode> list = getChildren();
        return list.toArray(new DSTreeNode[list.size()]);
    }

    @Override
    public Object DSgetValue() {
        return name;
    }

    @Override
    public Color DSgetColor() {
        return Color.magenta;
    }
}
