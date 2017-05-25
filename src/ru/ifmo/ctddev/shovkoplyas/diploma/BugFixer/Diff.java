package ru.ifmo.ctddev.shovkoplyas.diploma.BugFixer;

import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.ASTNode;

/**
 * Created by shovkoplyas on 25.05.2017.
 */
public class Diff {
    ASTNode from, to;

    public Diff(ASTNode from, ASTNode to) {
        this.from = from;
        this.to = to;
    }
}
