package ru.ifmo.ctddev.shovkoplyas.diploma.BugFixer;

import com.sun.org.apache.xpath.internal.operations.Variable;
import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.ASTNode;
import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.VarNode;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shovkoplyas on 25.05.2017.
 */
public class DiffFinder {

    public final ArrayList<Diff> found = new ArrayList<>();

    public void find(ASTNode before, ASTNode after) {
        if (before.getChildren().size() == 0 || after.getChildren().size() == 0
                || before instanceof VarNode && !((VarNode) before).hasIndexes()
                || after instanceof VarNode && !((VarNode) after).hasIndexes()) {
            found.add(new Diff(before, after));
        } else {
            List<ASTNode> bc = before.getChildren();
            List<ASTNode> ac = after.getChildren();
            for (int i = 0; i < bc.size(); i++) {
                if (bc.get(i) == null) {
                    if (ac.get(i) != null) {
                        found.add(new Diff(bc.get(i), ac.get(i)));
                    }
                } else if (!bc.get(i).equals(ac.get(i))) {
                    find(bc.get(i), ac.get(i));
                }
            }
        }


    }
}
