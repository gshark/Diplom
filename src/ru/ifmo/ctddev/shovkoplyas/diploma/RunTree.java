package ru.ifmo.ctddev.shovkoplyas.diploma;

import org.StructureGraphic.v1.DSutils;
import org.antlr.runtime.TokenSource;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import ru.ifmo.ctddev.shovkoplyas.diploma.ANTLR.PascalLexer;
import ru.ifmo.ctddev.shovkoplyas.diploma.ANTLR.PascalParser;
import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.ASTNode;
import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.Pusher;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import static ru.ifmo.ctddev.shovkoplyas.diploma.Tree.Utils.format;
import static ru.ifmo.ctddev.shovkoplyas.diploma.Tree.Utils.optimize;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public class RunTree {
    public static void main(String[] args) {
        boolean needPic = false;
        String input = "input.pas";
        String output = "output.pas";
        if (args.length > 0) {
            int k = 0;
            if (args[0].equals("-p")) {
                needPic = true;
                k++;
            }
            if (k + 1 < args.length) {
                input = args[k];
                output = args[k + 1];
            } else if (k != 1) {
                System.err.println("Usage: [<flag>] <input> <output>");
                return;
            }

        }
        try {
            CharStream in = CharStreams.fromStream(new FileInputStream(new File(input)));
            PascalLexer lexer = new PascalLexer(in);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            PascalParser parser = new PascalParser(tokens);
            PascalParser.ProgramContext result = parser.program();
            ASTNode ast = result.ast;
            new Pusher(ast).push();
            //String res = result.s;
            //System.err.println(res);
            if (needPic) {
                DSutils.show(ast, 100, 20);
            }
            //dfs(ast, ast, 0, 0);
            System.out.println(cnt);
            try (PrintWriter out = new PrintWriter(output)) {
                out.println(optimize(ast.toString()));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    static int cnt = 0;
    private static void dfs(ASTNode v, ASTNode u, int l1, int l2) {
        if (cnt++ % 1_000_000 == 0) {
            System.out.println(l1 + " " + l2);
        }
        if (v == null)
            return;
        if (u == null)
            return;
        if (v.equals(v) && !v.lookLike(v))
            System.err.println("fuck!!!");
        if (!v.equals(v) && v.lookLike(v)) {
            DSutils.show(v, 100, 20);
            DSutils.show(u, 100, 20);
        }
        for (ASTNode child : v.getChildren()) {
            dfs(child, u, l1 + 1, l2);
        }
        for (ASTNode child : u.getChildren()) {
            dfs(v, child, l1, l2 + 1);
        }

    }
}
