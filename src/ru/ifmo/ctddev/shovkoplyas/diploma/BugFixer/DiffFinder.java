package ru.ifmo.ctddev.shovkoplyas.diploma.BugFixer;

import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.ASTNode;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shovkoplyas on 25.05.2017.
 */
public class DiffFinder {

    public final ArrayList<Diff> found = new ArrayList<>();
    public void find(ASTNode before, ASTNode after) {
        if (!before.equals(after)) {
            found.add(new Diff(before, after));
        } else {
            List<ASTNode> bc = before.getChildren();
            List<ASTNode> ac = after.getChildren();
            for (int i = 0; i < bc.size(); i++) {
                
            }
        }


    }
}
