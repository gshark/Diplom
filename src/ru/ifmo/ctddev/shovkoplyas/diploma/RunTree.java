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

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by shovkoplyas on 04.05.2017.
 */
public class RunTree {
    public static void main(String[] args) {
        try {
            CharStream in = CharStreams.fromStream(new FileInputStream(new File("input.pas")));
            PascalLexer lexer = new PascalLexer(in);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            PascalParser parser = new PascalParser(tokens);
            PascalParser.ProgramContext result = parser.program();
            ASTNode ast = result.ast;
            //String res = result.s;
            //System.err.println(res);
            DSutils.show(ast, 150, 20);
            try (PrintWriter out = new PrintWriter("output.pas")) {
                out.println(ast.toString());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
