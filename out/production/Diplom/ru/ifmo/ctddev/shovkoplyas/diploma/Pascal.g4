grammar Pascal;

@parser::header {
import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.*;
import java.util.*;
}

@parser::members {
}

program returns [ASTNode ast]
   : programHeading (INTERFACE)? block DOT {
        ASTNode a = $programHeading.ast;
        ASTNode b = new UniversalNode($block.astList, "block");
        ASTNode dot = new TextNode(".");

        $ast = new UniversalNode(Arrays.asList(new ASTNode[]{a, b, dot}), "Program");}
   ;

programHeading returns [ASTNode ast]
   : PROGRAM identifier (LPAREN identifierList RPAREN)? SEMI {
        $ast = new StringNode(new TextNode("program " + $identifier.text));}
   | UNIT identifier SEMI {
        $ast = new StringNode(new TextNode("unit " + $identifier.text));}
   ;

identifier
   : IDENT
   ;

block returns [List<ASTNode> astList = new ArrayList<>()]
   : (labelDeclarationPart
   | constantDefinitionPart {$astList.add($constantDefinitionPart.ast);}
   | typeDefinitionPart
   | variableDeclarationPart {$astList.add($variableDeclarationPart.ast);}
   | procedureAndFunctionDeclarationPart {$astList.add($procedureAndFunctionDeclarationPart.ast);}
   | usesUnitsPart
   | IMPLEMENTATION)* compoundStatement {$astList.add($compoundStatement.ast);}
   ;

usesUnitsPart
   : USES identifierList SEMI
   ;

labelDeclarationPart
   : LABEL label (COMMA label)* SEMI
   ;

label
   : unsignedInteger
   ;

constantDefinitionPart returns [ASTNode ast]
   : CONST constantDefinition {
        List<ASTNode> list = new ArrayList<>();
        list.add(new TextNode("const\n"));
        list.add(new StringNode($constantDefinition.ast));
    }
    (SEMI constantDefinition {list.add(new StringNode($constantDefinition.ast));})*
    SEMI {$ast = new UniversalNode(list, "Consts");}
   ;

constantDefinition returns [ASTNode ast]
   : identifier EQUAL constant {
        ASTNode a = new TextNode($identifier.text);
        ASTNode b = $constant.ast;
        $ast = new BinOp(a, b, "=");}
   ;

constantChr
   : CHR LPAREN unsignedInteger RPAREN
   ;

constant returns [ASTNode ast]
   : unsignedNumber {$ast = new ConstNode($unsignedNumber.text, "unsignedNumber");}
   | sign unsignedNumber {$ast = new ConstNode($sign.text + $unsignedNumber.text, "signedNumber");}
   | identifier {$ast = new ConstNode($identifier.text, "identifier");}
   | sign identifier {$ast = new ConstNode($sign.text + $identifier.text, "signedIdentifier");}
   | string {$ast = new ConstNode($string.text, "string");}
   | constantChr
   ;

unsignedNumber
   : unsignedInteger
   | unsignedReal
   ;

unsignedInteger
   : NUM_INT
   ;

unsignedReal
   : NUM_INT
   ;

sign
   : PLUS
   | MINUS
   ;

string
   : STRING_LITERAL
   ;

typeDefinitionPart
   : TYPE (typeDefinition SEMI)+
   ;

typeDefinition
   : identifier EQUAL (type | functionType | procedureType)
   ;

functionType
   : FUNCTION (formalParameterList)? COLON resultType
   ;

procedureType
   : PROCEDURE (formalParameterList)?
   ;

type returns [ASTNode ast]
   : simpleType {$ast = $simpleType.ast;}
   | structuredType {$ast = $structuredType.ast;}
   | pointerType {$ast = $pointerType.ast;}
   ;

simpleType returns [ASTNode ast]
   : scalarType
   | subrangeType {$ast = $subrangeType.ast;}
   | typeIdentifier {$ast = new TypeNode($typeIdentifier.text);}
   | stringtype {$ast = new TypeNode("string");}
   ;

scalarType
   : LPAREN identifierList RPAREN
   ;

subrangeType returns [ASTNode ast]
   : constant {ASTNode l = $constant.ast;}
   DOTDOT constant {ASTNode r = $constant.ast; $ast = new TypeNode("range", l, r);}
   ;

typeIdentifier
   : identifier
   | (CHAR | BOOLEAN | INTEGER | REAL | STRING)
   ;

structuredType returns [ASTNode ast]
   : PACKED unpackedStructuredType
   | unpackedStructuredType {$ast = $unpackedStructuredType.ast;}
   ;

unpackedStructuredType returns [ASTNode ast]
   : arrayType {$ast = $arrayType.ast;}
   | recordType
   | setType
   | fileType
   ;

stringtype
   : STRING LBRACK (identifier | unsignedNumber) RBRACK
   ;

arrayType returns [ASTNode ast]
   : ARRAY LBRACK typeList RBRACK OF componentType
        {$ast = new TypeNode("array", $typeList.list, $componentType.ast);}
   | ARRAY LBRACK2 typeList RBRACK2 OF componentType
   ;

typeList returns [List<ASTNode> list = new ArrayList()]
   : indexType {$list.add($indexType.ast);}(COMMA indexType {$list.add($indexType.ast);})*
   ;

indexType returns [ASTNode ast]
   : simpleType {$ast = $simpleType.ast;}
   ;

componentType returns [ASTNode ast]
   : type {$ast = $type.ast;}
   ;

recordType
   : RECORD fieldList END
   ;

fieldList
   : fixedPart (SEMI variantPart)?
   | variantPart
   ;

fixedPart
   : recordSection (SEMI recordSection)*
   ;

recordSection
   : identifierList COLON type
   ;

variantPart
   : CASE tag OF variant (SEMI variant)*
   ;

tag
   : identifier COLON typeIdentifier
   | typeIdentifier
   ;

variant
   : constList COLON LPAREN fieldList RPAREN
   ;

setType
   : SET OF baseType
   ;

baseType
   : simpleType
   ;

fileType
   : FILE OF type
   | FILE
   ;

pointerType returns [ASTNode ast]
   : POINTER typeIdentifier
   ;

variableDeclarationPart returns [ASTNode ast]
   : VAR variableDeclaration {
        List<ASTNode> list = new ArrayList<>();
        list.add(new TextNode("var\n"));
        list.add(new StringNode($variableDeclaration.ast));
   }
   (SEMI variableDeclaration {list.add(new StringNode($variableDeclaration.ast));})*
   SEMI {$ast = new UniversalNode(list, "Vars");}
   ;

variableDeclaration returns [ASTNode ast]
   : identifierList COLON type {
        //List<String> idl = $identifierList.idl;
        ASTNode t = $type.ast;
        List<String> idl = $identifierList.idl;
        ArrayList<ASTNode> tmp = new ArrayList<>();
        for (String s : idl) {
            tmp.add(new VarNode(s, t));
        }
        ASTNode a = new UniversalNode(tmp, "group", ",");

        /*ASTNode a = new VarNode(idl.get(0), t);
        for (int i = 1; i < idl.size(); i++)
            a = new BinOp(a, new VarNode(idl.get(i), t), ",");
        */
        $ast =  new BinOp(a, t, ":");}
   ;

procedureAndFunctionDeclarationPart returns [ASTNode ast]
   : procedureOrFunctionDeclaration SEMI {$ast = $procedureOrFunctionDeclaration.ast;}
   ;

procedureOrFunctionDeclaration returns [ASTNode ast]
   : procedureDeclaration {$ast = $procedureDeclaration.ast;}
   | functionDeclaration {$ast = $functionDeclaration.ast;}
   ;

procedureDeclaration returns [ASTNode ast, boolean flag = false]
   : PROCEDURE identifier (formalParameterList {$flag = true;})? SEMI block {
        ASTNode b = new UniversalNode($block.astList, "block");
        $ast = new ProcedureNode($identifier.text, $flag ? $formalParameterList.ast : null, b);}
   ;

formalParameterList returns [ASTNode ast, ArrayList<ASTNode> list = new ArrayList()]
   : LPAREN formalParameterSection {$list.add($formalParameterSection.ast);}
   (SEMI formalParameterSection {$list.add($formalParameterSection.ast);})* RPAREN {
        $ast = new UniversalNode($list,  "Params", ";");
   }
   ;

formalParameterSection returns [ASTNode ast]
   : parameterGroup {$ast = $parameterGroup.ast;}
   | VAR parameterGroup {$ast = new BinOp(new TextNode("var"), $parameterGroup.ast, " ");}
   | FUNCTION parameterGroup
   | PROCEDURE parameterGroup
   ;

parameterGroup returns [ASTNode ast]
   : identifierList COLON typeIdentifier {
        ASTNode t = new TypeNode($typeIdentifier.text);
        List<String> idl = $identifierList.idl;
        ArrayList<ASTNode> tmp = new ArrayList<>();
        for (String s : idl) {
            tmp.add(new VarNode(s, t));
        }
        ASTNode a = new UniversalNode(tmp, "group", ",");
        /*ASTNode a = new VarNode(idl.get(0), t);
        for (int i = 1; i < idl.size(); i++)
            a = new BinOp(a, new VarNode(idl.get(i), t), ",");
        */
        $ast =  new BinOp(a, t, ":");
   }
   ;

identifierList returns [ArrayList<String> idl = new ArrayList<>()]
   : identifier {$idl.add($identifier.text);}(COMMA identifier {$idl.add($identifier.text);})*
   ;

constList
   : constant (COMMA constant)*
   ;

functionDeclaration returns [ASTNode ast, boolean flag = false]
   : FUNCTION identifier (formalParameterList {$flag = true;})? COLON resultType SEMI block {
           ASTNode b = new UniversalNode($block.astList, "block");
           TypeNode t = new TypeNode($resultType.text);
           $ast = new FunctionNode($identifier.text, t, $flag ? $formalParameterList.ast : null, b);}
   ;

resultType
   : typeIdentifier
   ;

statement returns [ASTNode ast]
   : label COLON unlabelledStatement
   | unlabelledStatement {$ast = $unlabelledStatement.ast;}
   ;

unlabelledStatement returns [ASTNode ast]
   : simpleStatement {$ast = $simpleStatement.ast;}
   | structuredStatement {$ast = $structuredStatement.ast;}
   ;

simpleStatement returns [ASTNode ast]
   : assignmentStatement {$ast = $assignmentStatement.ast;}
   | procedureStatement {$ast = $procedureStatement.ast;}
   | gotoStatement
   | emptyStatement {$ast = null;}
   ;

assignmentStatement returns [ASTNode ast]
   : variable ASSIGN expression {$ast = new BinOp($variable.ast, $expression.ast, ":=");}
   ;

variable returns [ASTNode ast]
   : (AT identifier | identifier) {VarNode t = new VarNode($identifier.text);}
        (LBRACK expression {t.ids.add($expression.ast);}(COMMA expression {t.ids.add($expression.ast);})* RBRACK
        | LBRACK2 expression (COMMA expression)* RBRACK2
        | DOT identifier
        | POINTER)* {$ast = t;}
   ;

expression returns [ASTNode ast]
   : simpleExpression {ASTNode t = $simpleExpression.ast; String s;}
   ((EQUAL {s = $EQUAL.text;}
   | NOT_EQUAL {s = $NOT_EQUAL.text;}
   | LT {s = $LT.text;}
   | LE {s = $LE.text;}
   | GE {s = $GE.text;}
   | GT {s = $GT.text;}
   | IN {s = $IN.text;}
   ) simpleExpression {t = new BinOp(t, $simpleExpression.ast, s);})*
   {$ast = t;}
   ;

simpleExpression returns [ASTNode ast]
   : term {ASTNode t = $term.ast; String s;}
   ((PLUS {s = $PLUS.text;}
   | MINUS {s = $MINUS.text;}
   | OR {s = $OR.text;}
   ) term {t = new BinOp(t, $term.ast, s);})*
   {$ast = t;}
   ;

term returns [ASTNode ast]
   : signedFactor {ASTNode t = $signedFactor.ast; String s;}
   ((STAR {s = $STAR.text;}
   | SLASH {s = $SLASH.text;}
   | DIV {s = $DIV.text;}
   | MOD {s = $MOD.text;}
   | AND {s = $AND.text;}
   ) signedFactor {t = new BinOp(t, $signedFactor.ast, s);})*
   {$ast = t;}
   ;

signedFactor returns [ASTNode ast]
   : {String s = null;}
    (PLUS {s = $PLUS.text;}
   | MINUS {s = $MINUS.text;})? factor {
    if (s != null) {
        $ast = new UnOp($factor.ast, s);
    } else {
        $ast = $factor.ast;
    }
   }
   ;

factor returns [ASTNode ast]
   : variable {$ast = $variable.ast;}
   | LPAREN expression RPAREN {$ast = new BracketsNode($expression.ast);}
   | functionDesignator {$ast = $functionDesignator.ast;}
   | unsignedConstant {$ast = $unsignedConstant.ast;}
   | set
   | NOT factor {$ast = new UnOp($factor.ast, $NOT.text);}
   ;

unsignedConstant returns [ASTNode ast]
   : unsignedNumber {$ast = new ConstNode($unsignedNumber.text, "unsignedNumber");}
   | constantChr
   | string {$ast = new ConstNode($string.text, "string");}
   | NIL {$ast = new ConstNode($NIL.text, "NIL");}
   ;

functionDesignator returns [ASTNode ast]
   : identifier LPAREN parameterList RPAREN {$ast =  new FunctionNode($identifier.text, $parameterList.ast);}
   ;

parameterList returns [ASTNode ast]
   : actualParameter {List<ASTNode> list = new ArrayList<>();
                      list.add($actualParameter.ast);}
        (COMMA actualParameter {list.add($actualParameter.ast);})*
        {
            if (list.size() > 1) {
                $ast = new UniversalNode(list, "params", ",");
            } else {
                $ast = list.get(0);
            }
        }
   ;

set
   : LBRACK elementList RBRACK
   | LBRACK2 elementList RBRACK2
   ;

elementList
   : element (COMMA element)*
   |
   ;

element
   : expression (DOTDOT expression)?
   ;

procedureStatement returns [ASTNode ast]
   : identifier {boolean flag = false;}(LPAREN parameterList RPAREN {flag = true;})?
   {$ast = new ProcedureNode($identifier.text, (flag ? $parameterList.ast : null));}
   ;

actualParameter returns [ASTNode ast]
   : expression {$ast = $expression.ast;}
   ;

gotoStatement
   : GOTO label
   ;

emptyStatement
   :
   ;

empty
   :/* empty */
   ;

structuredStatement returns [ASTNode ast]
   : compoundStatement {$ast = $compoundStatement.ast;}
   | conditionalStatement {$ast = $conditionalStatement.ast;}
   | repetetiveStatement {$ast = $repetetiveStatement.ast;}
   | withStatement
   ;

compoundStatement returns [ASTNode ast]
   : BEGIN statements END {$ast = new StringNode(new CompoundNode($statements.astList));}
   ;

statements returns [List<ASTNode> astList = new ArrayList<>()]
   : statement {$astList.add(new StringNode($statement.ast));}(SEMI statement {$astList.add(new StringNode($statement.ast));})*
   ;

conditionalStatement returns [ASTNode ast]
   : ifStatement {$ast = $ifStatement.ast;}
   | caseStatement
   ;

ifStatement returns [ASTNode ast]
   : IF expression THEN statement {
    ASTNode ex = $expression.ast;
    ASTNode i = $statement.ast;
    ASTNode e = null;
   }(: ELSE statement {e = $statement.ast;})?
   {$ast = new IfNode(ex, i, e);}
   ;

caseStatement
   : CASE expression OF caseListElement (SEMI caseListElement)* (SEMI ELSE statements)? END
   ;

caseListElement
   : constList COLON statement
   ;

repetetiveStatement returns [ASTNode ast]
   : whileStatement {$ast = $whileStatement.ast;}
   | repeatStatement {$ast = $repeatStatement.ast;}
   | forStatement {$ast = $forStatement.ast;}
   ;

whileStatement returns [ASTNode ast]
   : WHILE expression DO statement {$ast = new WhileNode($expression.ast, $statement.ast);}
   ;

repeatStatement returns [ASTNode ast]
   : REPEAT statements UNTIL expression {
    List<ASTNode> list = $statements.astList;
    ASTNode s = list.get(0);
    if (list.size() > 1) {
        s = new UniversalNode(list, "statements");
    }
    $ast = new RepeatNode($expression.ast, s);}
   ;

forStatement returns [ASTNode ast]
   : FOR identifier ASSIGN forList DO statement {
    $ast = new ForNode(new VarNode($identifier.text), $statement.ast, $forList.from, $forList.to, $forList.op);}
   ;

forList returns [ASTNode from, ASTNode to, String op]
   : initialValue {$from = $initialValue.ast;}
   (TO {$op = $TO.text;}| DOWNTO {$op = $DOWNTO.text;})
   finalValue {$to = $finalValue.ast;}
   ;

initialValue returns [ASTNode ast]
   : expression {$ast = $expression.ast;}
   ;

finalValue returns [ASTNode ast]
   : expression {$ast = $expression.ast;}
   ;

withStatement
   : WITH recordVariableList DO statement
   ;

recordVariableList
   : variable (COMMA variable)*
   ;


fragment A
   : ('a' | 'A')
   ;


fragment B
   : ('b' | 'B')
   ;


fragment C
   : ('c' | 'C')
   ;


fragment D
   : ('d' | 'D')
   ;


fragment E
   : ('e' | 'E')
   ;


fragment F
   : ('f' | 'F')
   ;


fragment G
   : ('g' | 'G')
   ;


fragment H
   : ('h' | 'H')
   ;


fragment I
   : ('i' | 'I')
   ;


fragment J
   : ('j' | 'J')
   ;


fragment K
   : ('k' | 'K')
   ;


fragment L
   : ('l' | 'L')
   ;


fragment M
   : ('m' | 'M')
   ;


fragment N
   : ('n' | 'N')
   ;


fragment O
   : ('o' | 'O')
   ;


fragment P
   : ('p' | 'P')
   ;


fragment Q
   : ('q' | 'Q')
   ;


fragment R
   : ('r' | 'R')
   ;


fragment S
   : ('s' | 'S')
   ;


fragment T
   : ('t' | 'T')
   ;


fragment U
   : ('u' | 'U')
   ;


fragment V
   : ('v' | 'V')
   ;


fragment W
   : ('w' | 'W')
   ;


fragment X
   : ('x' | 'X')
   ;


fragment Y
   : ('y' | 'Y')
   ;


fragment Z
   : ('z' | 'Z')
   ;


AND
   : A N D
   ;


ARRAY
   : A R R A Y
   ;


BEGIN
   : B E G I N
   ;


BOOLEAN
   : B O O L E A N
   ;


CASE
   : C A S E
   ;


CHAR
   : C H A R
   ;


CHR
   : C H R
   ;


CONST
   : C O N S T
   ;


DIV
   : D I V
   ;


DO
   : D O
   ;


DOWNTO
   : D O W N T O
   ;


ELSE
   : E L S E
   ;


END
   : E N D
   ;


FILE
   : F I L E
   ;


FOR
   : F O R
   ;


FUNCTION
   : F U N C T I O N
   ;


GOTO
   : G O T O
   ;


IF
   : I F
   ;


IN
   : I N
   ;


INTEGER
   : I N T E G E R
   ;


LABEL
   : L A B E L
   ;


MOD
   : M O D
   ;


NIL
   : N I L
   ;


NOT
   : N O T
   ;


OF
   : O F
   ;


OR
   : O R
   ;


PACKED
   : P A C K E D
   ;


PROCEDURE
   : P R O C E D U R E
   ;


PROGRAM
   : P R O G R A M
   ;


REAL
   : R E A L
   ;


RECORD
   : R E C O R D
   ;


REPEAT
   : R E P E A T
   ;


SET
   : S E T
   ;


THEN
   : T H E N
   ;


TO
   : T O
   ;


TYPE
   : T Y P E
   ;


UNTIL
   : U N T I L
   ;


VAR
   : V A R
   ;


WHILE
   : W H I L E
   ;


WITH
   : W I T H
   ;


PLUS
   : '+'
   ;


MINUS
   : '-'
   ;


STAR
   : '*'
   ;


SLASH
   : '/'
   ;


ASSIGN
   : ':='
   ;


COMMA
   : ','
   ;


SEMI
   : ';'
   ;


COLON
   : ':'
   ;


EQUAL
   : '='
   ;


NOT_EQUAL
   : '<>'
   ;


LT
   : '<'
   ;


LE
   : '<='
   ;


GE
   : '>='
   ;


GT
   : '>'
   ;


LPAREN
   : '('
   ;


RPAREN
   : ')'
   ;


LBRACK
   : '['
   ;


LBRACK2
   : '(.'
   ;


RBRACK
   : ']'
   ;


RBRACK2
   : '.)'
   ;


POINTER
   : '^'
   ;


AT
   : '@'
   ;


DOT
   : '.'
   ;


DOTDOT
   : '..'
   ;


LCURLY
   : '{'
   ;


RCURLY
   : '}'
   ;


UNIT
   : U N I T
   ;


INTERFACE
   : I N T E R F A C E
   ;


USES
   : U S E S
   ;


STRING
   : S T R I N G
   ;


IMPLEMENTATION
   : I M P L E M E N T A T I O N
   ;


WS
   : [ \t\r\n] -> skip
   ;


COMMENT_1
   : '(*' .*? '*)' -> skip
   ;


COMMENT_2
   : '{' .*? '}' -> skip
   ;


IDENT
   : ('a' .. 'z' | 'A' .. 'Z') ('a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_')*
   ;


STRING_LITERAL
   : '\'' ('\'\'' | ~ ('\''))* '\''
   ;


NUM_INT
   : ('0' .. '9') + (('.' ('0' .. '9') + (EXPONENT)?)? | EXPONENT)
   ;


fragment EXPONENT
   : ('e') ('+' | '-')? ('0' .. '9') +
   ;