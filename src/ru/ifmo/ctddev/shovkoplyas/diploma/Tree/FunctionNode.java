package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 19.05.2017.
 */
public class FunctionNode implements ASTNode {

    public FunctionNode(String name, TypeNode type, ASTNode params, ASTNode block) {
        this.name = name;
        this.type = type;
        this.block = block;
        this.params = params;
    }

    @Override
    public List<ASTNode> getChildren() {
        if (params == null) {
            return Arrays.asList(new ASTNode[]{type, block});
        }
        return Arrays.asList(new ASTNode[]{type, params, block});
    }

    String name;
    ASTNode params, block;
    TypeNode type;

    @Override
    public String toString() {
        return String.format("function %s(%s):%s;\n%s", name, params.toString(), type.toString(), block.toString());

    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        if (params == null) {
            return new DSTreeNode[]{type, block};
        }
        return new DSTreeNode[]{type, params, block};
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
