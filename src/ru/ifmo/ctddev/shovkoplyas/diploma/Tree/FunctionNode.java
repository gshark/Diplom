package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 19.05.2017.
 */
public class FunctionNode extends ASTNode {

    public FunctionNode(String name, TypeNode type, ASTNode params, ASTNode block) {
        this.name = name;
        this.type = type;
        this.block = block;
        this.params = params;
    }

    public FunctionNode(String name, ASTNode params) {
        this.name = name;
        this.params = params;
    }

    @Override
    public List<ASTNode> getChildren() {
        List<ASTNode> res = new ArrayList<>();
        if (type != null)
            res.add(type);
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
    TypeNode type;

    @Override
    public String toString() {
        String p = "";
        if (params != null)
            p = params.toString();

        if (block != null) {
            return String.format("function %s(%s):%s;\n%s", name, p, type.toString(), block.toString());
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
        return Color.CYAN;
    }
}
