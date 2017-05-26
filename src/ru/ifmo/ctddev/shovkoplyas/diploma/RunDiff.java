package ru.ifmo.ctddev.shovkoplyas.diploma;

import org.StructureGraphic.v1.DSutils;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import ru.ifmo.ctddev.shovkoplyas.diploma.ANTLR.PascalLexer;
import ru.ifmo.ctddev.shovkoplyas.diploma.ANTLR.PascalParser;
import ru.ifmo.ctddev.shovkoplyas.diploma.BugFixer.Diff;
import ru.ifmo.ctddev.shovkoplyas.diploma.BugFixer.DiffFinder;
import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.ASTNode;
import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.Pusher;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import static ru.ifmo.ctddev.shovkoplyas.diploma.Tree.Utils.optimize;

/**
 * Created by shovkoplyas on 26.05.2017.
 */
public class RunDiff {
    public static void main(String[] args) {
        boolean needPic = true;
        String input1 = "tests/input1.pas";
        String input2 = "tests/input2.pas";
        if (args.length > 0) {
            int k = 0;
            if (args[0].equals("-p")) {
                needPic = true;
                k++;
            }
            if (k + 1 < args.length) {
                input1 = args[k];
                input2 = args[k + 1];
            } else if (k != 1) {
                System.err.println("Usage: [<flag>] <input1> <input2>");
                return;
            }

        }
        try {
            CharStream in = CharStreams.fromStream(new FileInputStream(new File(input1)));
            PascalLexer lexer = new PascalLexer(in);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            PascalParser parser = new PascalParser(tokens);
            PascalParser.ProgramContext result = parser.program();
            ASTNode ast1 = result.ast;
            new Pusher(ast1).push();

            in = CharStreams.fromStream(new FileInputStream(new File(input2)));
            lexer = new PascalLexer(in);
            tokens = new CommonTokenStream(lexer);
            parser = new PascalParser(tokens);
            result = parser.program();
            ASTNode ast2 = result.ast;
            new Pusher(ast2).push();

            DiffFinder df = new DiffFinder();
            df.find(ast1, ast2);
            for (Diff diff : df.found) {
                if (needPic) {
                    DSutils.show(diff.getBefore(), 100, 20);
                    DSutils.show(diff.getAfter(), 100, 20);
                }
                System.out.println(diff.getBefore().toString());
                System.out.println("---");
                System.out.println(diff.getAfter().toString());
                System.out.println("|||||||||||---|||||||");

            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
