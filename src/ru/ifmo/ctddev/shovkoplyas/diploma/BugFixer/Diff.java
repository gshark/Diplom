package ru.ifmo.ctddev.shovkoplyas.diploma.BugFixer;

import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.ASTNode;

/**
 * Created by shovkoplyas on 25.05.2017.
 */
public class Diff {
    ASTNode before, after;

    public Diff(ASTNode before, ASTNode after) {
        this.before = before;
        this.after = after;
    }

    public void setBefore(ASTNode before) {
        this.before = before;
    }

    public void setAfter(ASTNode after) {
        this.after = after;
    }

    public ASTNode getBefore() {
        return before;
    }

    public ASTNode getAfter() {
        return after;
    }
}
