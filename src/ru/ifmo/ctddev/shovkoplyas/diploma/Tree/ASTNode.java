package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.StructureGraphic.v1.DSTreeNode;

import java.util.List;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public interface ASTNode extends DSTreeNode {
    List<ASTNode> getChildren();
}
