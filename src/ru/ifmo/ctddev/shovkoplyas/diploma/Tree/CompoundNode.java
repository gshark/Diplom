package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

/**
 * Created by shovkoplyas on 19.05.2017.
 */
public class CompoundNode extends UniversalNode {
    public CompoundNode(List<ASTNode> children) {
        super(children, "begin..end");
    }

    @Override
    public String toString() {
        return "begin\n" + super.toString() + "\nend";
    }
}
