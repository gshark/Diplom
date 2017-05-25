package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import java.util.Arrays;

/**
 * Created by shovkoplyas on 23.05.2017.
 */
public class UnOp extends UniversalNode {
    ASTNode once;
    String text;

    public UnOp(ASTNode once, String text) {
        super(Arrays.asList(new ASTNode[]{once}), text);
        this.once = once;
        this.text = text;
    }

    @Override
    public boolean lookLike(ASTNode o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UnOp uo = (UnOp) o;
        return uo.once.lookLike(once) && uo.text.equals(text);
    }


    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(text);
        if (once != null)
            sb.append(once.toString());
        else
            sb.append("null");
        return sb.toString();
    }
}
