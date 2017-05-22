package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 05.05.2017.
 */
public class VarNode implements ASTNode {
    public VarNode(String text) {
        this.text = text;
    }

    public VarNode(String text, ASTNode type) {
        this.text = text;
        this.type = type;
    }

    @Override
    public List<ASTNode> getChildren() {
        if (ids.isEmpty()) {
            return Arrays.asList(new ASTNode[]{type});
        }
        ASTNode tmp = new UniversalNode(ids, "ids");
        return Arrays.asList(new ASTNode[]{type, tmp});
    }

    String text;
    ASTNode type;
    public List<ASTNode> ids = new ArrayList<>();

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(text);
        if (!ids.isEmpty()) {
            sb.append("[");
            for (ASTNode a : ids) {
                if (a != null)
                    sb.append(a.toString());
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append("]");
        }
        return sb.toString();
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        if (ids.isEmpty()) {
            return new DSTreeNode[]{type};
        }
        ASTNode tmp = new UniversalNode(ids, "ids");
        return new DSTreeNode[]{type, tmp};
    }

    @Override
    public Object DSgetValue() {
        return text;
    }

    @Override
    public Color DSgetColor() {
        return Color.GREEN;
    }
}
