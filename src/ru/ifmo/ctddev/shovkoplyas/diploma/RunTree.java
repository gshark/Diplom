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
            //if (needPic) {
                DSutils.show(ast, 100, 20);
            //}
            try (PrintWriter out = new PrintWriter(output)) {
                out.println(optimize(ast.toString()));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
