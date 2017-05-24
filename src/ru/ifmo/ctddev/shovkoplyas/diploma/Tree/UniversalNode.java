package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public class UniversalNode implements ASTNode {
    List<ASTNode> children;
    boolean needSep;
    String sep;

    @Override
    public String toString() {
        boolean flag = false;
        StringBuilder sb = new StringBuilder();
        for (ASTNode ast : children) {
            if (ast != null) {
                if (ast.toString() == ".")
                    flag = true;
                sb.append(ast.toString());
            } /*else
                sb.append("NULL\n");*/
            if (needSep) {
                sb.append(sep);
            }
        }
        if (needSep) {
            sb.deleteCharAt(sb.length() - 1);
        }
        if (flag) {
        //if (sb.length() > 0 && sb.indexOf(".") == sb.length() - 1) {
            int id = sb.lastIndexOf("end;");
            //System.err.println(id);
            //System.err.println(sb.length());
            sb.delete(id, sb.length()).append("end.\n");
        }

        return sb.toString();
    }

    public UniversalNode(List<ASTNode> children, String text) {
        List<ASTNode> tmp = new ArrayList<>();
        for (int i = 0; i < children.size(); i++) {
            if (children.get(i) instanceof StringNode && ((StringNode) children.get(i)).child == null) {
                continue;
            }
            tmp.add(children.get(i));
        }
        this.children = tmp;
        this.text = text;
    }

    public UniversalNode(List<ASTNode> children, String text, String sep) {
        this.children = children;
        this.text = text;
        this.needSep = true;
        this.sep = sep;
    }

    String text;

    @Override
    public List<ASTNode> getChildren() {
        return children;
    }

    @Override
    public DSTreeNode[] DSgetChildren() {
        if (children == null) {
            return new DSTreeNode[0];
        }
        return children.toArray(new DSTreeNode[children.size()]);
    }

    @Override
    public Object DSgetValue() {
        return text;
    }

    @Override
    public Color DSgetColor() {
        return Color.DARK_GRAY;
    }
}
