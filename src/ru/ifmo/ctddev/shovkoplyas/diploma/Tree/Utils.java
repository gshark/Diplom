package ru.ifmo.ctddev.shovkoplyas.diploma.Tree;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Created by shovkoplyas on 24.05.2017.
 */
public class Utils {
    public static String optimize(String code) {
        String[] splited = code.split("\n");
        /*for (int i = 0; i < splited.length; i++) {
            System.err.println(splited[i]);
        }*/
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < splited.length; i++) {
            if (splited[i].length() == 0 || splited[i].equals(";")) {
                continue;
            }
            if (splited[i].startsWith("else")) {
                if (sb.lastIndexOf(";") == sb.length() - 2) {
                    sb.deleteCharAt(sb.lastIndexOf(";"));
                }
            }
            sb.append(splited[i]);
            sb.append("\n");
        }

        return sb.toString();
    }


    public static String format(String code) {
        try {
            final String out = "__tmp.pas";
            final String in = "__tmp1.pas";
            PrintWriter pw = new PrintWriter(new File(out));
            pw.println(code);
            pw.close();
            Files.deleteIfExists(Paths.get(in));
            Files.createFile(Paths.get(in));
            Process p = Runtime.getRuntime().exec(String.format("fc %s %s", out, in));
            p.waitFor();
            BufferedReader br = new BufferedReader(new FileReader(new File(in)));
            String line = br.readLine();
            StringBuilder sb = new StringBuilder();
            while (line != null) {
                sb.append(line);
                line = br.readLine();
            }
            Files.delete(Paths.get(out));
            Files.delete(Paths.get(in));
            return sb.toString();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return null;
    }
}
