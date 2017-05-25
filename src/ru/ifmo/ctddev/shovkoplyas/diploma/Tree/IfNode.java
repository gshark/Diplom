package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 23.05.2017.
 */
public class IfNode extends ASTNode {
    ASTNode expression, ifCase, elseCase;

    public IfNode(ASTNode expression, ASTNode ifCase, ASTNode elseCase) {
        this.expression = expression;
        this.ifCase = ifCase;
        this.elseCase = elseCase;
    }

    @Override
    public List<ASTNode> getChildren() {
        if (elseCase != null) {
            return Arrays.asList(new ASTNode[]{expression, ifCase, elseCase});
        }
        return Arrays.asList(new ASTNode[]{expression, ifCase});
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        if (elseCase != null) {
            return new DSTreeNode[]{expression, ifCase, elseCase};
        }
        return new DSTreeNode[]{expression, ifCase};
    }

    @Override
    public Object DSgetValue() {
        return "if";
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("if ").append(expression.toString()).append(" then\n");
        sb.append(ifCase);
        if (elseCase != null) {
            sb.append("\nelse\n").append(elseCase);
        }
        return sb.toString();
    }

    @Override
    public Color DSgetColor() {
        return Color.blue;
    }
}
