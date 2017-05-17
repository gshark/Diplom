package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
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

    @Override
    public List<ASTNode> getChildren() {
        if (params == null) {
            return Arrays.asList(new ASTNode[]{block});
        }
        return Arrays.asList(new ASTNode[]{params, block});
    }

    String name;
    ASTNode params, block;

    @Override
    public String toString() {
        return String.format("procedure %s(%s);\n%s", name, params.toString(), block.toString());

    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        if (params == null) {
            return new DSTreeNode[]{block};
        }
        return new DSTreeNode[]{params, block};
    }

    @Override
    public Object DSgetValue() {
        return name;
    }

    @Override
    public Color DSgetColor() {
        return Color.BLUE;
    }
}
