package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 05.05.2017.
 */
public class VarNode extends ASTNode {
    public VarNode(String name) {
        this.name = name;
    }

    public TypeNode getType() {
        return type;
    }

    public boolean hasIndexes() {
        return !ids.isEmpty();
    }

    public void setType(TypeNode type) {
        this.type = type;
    }

    public VarNode(String name, TypeNode type) {
        this.name = name;
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

    @Override
    public boolean lookLike(ASTNode o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VarNode varNode = (VarNode) o;

        if (type != null ? !type.lookLike(varNode.type) : varNode.type != null) return false;
        List<ASTNode> oids = varNode.ids;
        if (ids == null) return oids == null;
        if (ids.size() != oids.size()) return false;
        for (int i = 0; i < ids.size(); i++) {
            if (!ids.get(i).lookLike(oids.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VarNode varNode = (VarNode) o;

        if (name != null ? !name.equals(varNode.name) : varNode.name != null) return false;
        if (type != null ? !type.equals(varNode.type) : varNode.type != null) return false;
        List<ASTNode> oids = varNode.ids;
        if (ids == null) return oids == null;
        if (ids.size() != oids.size()) return false;
        for (int i = 0; i < ids.size(); i++) {
            if (!ids.get(i).equals(oids.get(i))) {
                return false;
            }
        }
        return true;

    }


    String name;
    TypeNode type;
    public List<ASTNode> ids = new ArrayList<>();

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(name);
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
        return name;
    }

    @Override
    public Color DSgetColor() {
        return Color.GREEN;
    }
}
