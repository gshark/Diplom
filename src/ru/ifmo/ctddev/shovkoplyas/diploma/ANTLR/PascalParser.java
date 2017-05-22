// Generated from C:/Users/shovkoplyas/IdeaProjects/Diplom/src/ru/ifmo/ctddev/shovkoplyas/diploma\Pascal.g4 by ANTLR 4.7
package ru.ifmo.ctddev.shovkoplyas.diploma.ANTLR;

import ru.ifmo.ctddev.shovkoplyas.diploma.Tree.*;
import java.util.*;

import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class PascalParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		AND=1, ARRAY=2, BEGIN=3, BOOLEAN=4, CASE=5, CHAR=6, CHR=7, CONST=8, DIV=9, 
		DO=10, DOWNTO=11, ELSE=12, END=13, FILE=14, FOR=15, FUNCTION=16, GOTO=17, 
		IF=18, IN=19, INTEGER=20, LABEL=21, MOD=22, NIL=23, NOT=24, OF=25, OR=26, 
		PACKED=27, PROCEDURE=28, PROGRAM=29, REAL=30, RECORD=31, REPEAT=32, SET=33, 
		THEN=34, TO=35, TYPE=36, UNTIL=37, VAR=38, WHILE=39, WITH=40, PLUS=41, 
		MINUS=42, STAR=43, SLASH=44, ASSIGN=45, COMMA=46, SEMI=47, COLON=48, EQUAL=49, 
		NOT_EQUAL=50, LT=51, LE=52, GE=53, GT=54, LPAREN=55, RPAREN=56, LBRACK=57, 
		LBRACK2=58, RBRACK=59, RBRACK2=60, POINTER=61, AT=62, DOT=63, DOTDOT=64, 
		LCURLY=65, RCURLY=66, UNIT=67, INTERFACE=68, USES=69, STRING=70, IMPLEMENTATION=71, 
		WS=72, COMMENT_1=73, COMMENT_2=74, IDENT=75, STRING_LITERAL=76, NUM_INT=77;
	public static final int
		RULE_program = 0, RULE_programHeading = 1, RULE_identifier = 2, RULE_block = 3, 
		RULE_usesUnitsPart = 4, RULE_labelDeclarationPart = 5, RULE_label = 6, 
		RULE_constantDefinitionPart = 7, RULE_constantDefinition = 8, RULE_constantChr = 9, 
		RULE_constant = 10, RULE_unsignedNumber = 11, RULE_unsignedInteger = 12, 
		RULE_unsignedReal = 13, RULE_sign = 14, RULE_string = 15, RULE_typeDefinitionPart = 16, 
		RULE_typeDefinition = 17, RULE_functionType = 18, RULE_procedureType = 19, 
		RULE_type = 20, RULE_simpleType = 21, RULE_scalarType = 22, RULE_subrangeType = 23, 
		RULE_typeIdentifier = 24, RULE_structuredType = 25, RULE_unpackedStructuredType = 26, 
		RULE_stringtype = 27, RULE_arrayType = 28, RULE_typeList = 29, RULE_indexType = 30, 
		RULE_componentType = 31, RULE_recordType = 32, RULE_fieldList = 33, RULE_fixedPart = 34, 
		RULE_recordSection = 35, RULE_variantPart = 36, RULE_tag = 37, RULE_variant = 38, 
		RULE_setType = 39, RULE_baseType = 40, RULE_fileType = 41, RULE_pointerType = 42, 
		RULE_variableDeclarationPart = 43, RULE_variableDeclaration = 44, RULE_procedureAndFunctionDeclarationPart = 45, 
		RULE_procedureOrFunctionDeclaration = 46, RULE_procedureDeclaration = 47, 
		RULE_formalParameterList = 48, RULE_formalParameterSection = 49, RULE_parameterGroup = 50, 
		RULE_identifierList = 51, RULE_constList = 52, RULE_functionDeclaration = 53, 
		RULE_resultType = 54, RULE_statement = 55, RULE_unlabelledStatement = 56, 
		RULE_simpleStatement = 57, RULE_assignmentStatement = 58, RULE_variable = 59, 
		RULE_expression = 60, RULE_simpleExpression = 61, RULE_term = 62, RULE_signedFactor = 63, 
		RULE_factor = 64, RULE_unsignedConstant = 65, RULE_functionDesignator = 66, 
		RULE_parameterList = 67, RULE_set = 68, RULE_elementList = 69, RULE_element = 70, 
		RULE_procedureStatement = 71, RULE_actualParameter = 72, RULE_gotoStatement = 73, 
		RULE_emptyStatement = 74, RULE_empty = 75, RULE_structuredStatement = 76, 
		RULE_compoundStatement = 77, RULE_statements = 78, RULE_conditionalStatement = 79, 
		RULE_ifStatement = 80, RULE_caseStatement = 81, RULE_caseListElement = 82, 
		RULE_repetetiveStatement = 83, RULE_whileStatement = 84, RULE_repeatStatement = 85, 
		RULE_forStatement = 86, RULE_forList = 87, RULE_initialValue = 88, RULE_finalValue = 89, 
		RULE_withStatement = 90, RULE_recordVariableList = 91;
	public static final String[] ruleNames = {
		"program", "programHeading", "identifier", "block", "usesUnitsPart", "labelDeclarationPart", 
		"label", "constantDefinitionPart", "constantDefinition", "constantChr", 
		"constant", "unsignedNumber", "unsignedInteger", "unsignedReal", "sign", 
		"string", "typeDefinitionPart", "typeDefinition", "functionType", "procedureType", 
		"type", "simpleType", "scalarType", "subrangeType", "typeIdentifier", 
		"structuredType", "unpackedStructuredType", "stringtype", "arrayType", 
		"typeList", "indexType", "componentType", "recordType", "fieldList", "fixedPart", 
		"recordSection", "variantPart", "tag", "variant", "setType", "baseType", 
		"fileType", "pointerType", "variableDeclarationPart", "variableDeclaration", 
		"procedureAndFunctionDeclarationPart", "procedureOrFunctionDeclaration", 
		"procedureDeclaration", "formalParameterList", "formalParameterSection", 
		"parameterGroup", "identifierList", "constList", "functionDeclaration", 
		"resultType", "statement", "unlabelledStatement", "simpleStatement", "assignmentStatement", 
		"variable", "expression", "simpleExpression", "term", "signedFactor", 
		"factor", "unsignedConstant", "functionDesignator", "parameterList", "set", 
		"elementList", "element", "procedureStatement", "actualParameter", "gotoStatement", 
		"emptyStatement", "empty", "structuredStatement", "compoundStatement", 
		"statements", "conditionalStatement", "ifStatement", "caseStatement", 
		"caseListElement", "repetetiveStatement", "whileStatement", "repeatStatement", 
		"forStatement", "forList", "initialValue", "finalValue", "withStatement", 
		"recordVariableList"
	};

	private static final String[] _LITERAL_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, "'+'", "'-'", "'*'", "'/'", "':='", "','", 
		"';'", "':'", "'='", "'<>'", "'<'", "'<='", "'>='", "'>'", "'('", "')'", 
		"'['", "'(.'", "']'", "'.)'", "'^'", "'@'", "'.'", "'..'", "'{'", "'}'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, "AND", "ARRAY", "BEGIN", "BOOLEAN", "CASE", "CHAR", "CHR", "CONST", 
		"DIV", "DO", "DOWNTO", "ELSE", "END", "FILE", "FOR", "FUNCTION", "GOTO", 
		"IF", "IN", "INTEGER", "LABEL", "MOD", "NIL", "NOT", "OF", "OR", "PACKED", 
		"PROCEDURE", "PROGRAM", "REAL", "RECORD", "REPEAT", "SET", "THEN", "TO", 
		"TYPE", "UNTIL", "VAR", "WHILE", "WITH", "PLUS", "MINUS", "STAR", "SLASH", 
		"ASSIGN", "COMMA", "SEMI", "COLON", "EQUAL", "NOT_EQUAL", "LT", "LE", 
		"GE", "GT", "LPAREN", "RPAREN", "LBRACK", "LBRACK2", "RBRACK", "RBRACK2", 
		"POINTER", "AT", "DOT", "DOTDOT", "LCURLY", "RCURLY", "UNIT", "INTERFACE", 
		"USES", "STRING", "IMPLEMENTATION", "WS", "COMMENT_1", "COMMENT_2", "IDENT", 
		"STRING_LITERAL", "NUM_INT"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Pascal.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }



	public PascalParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgramContext extends ParserRuleContext {
		public ASTNode ast;
		public ProgramHeadingContext programHeading;
		public BlockContext block;
		public ProgramHeadingContext programHeading() {
			return getRuleContext(ProgramHeadingContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public TerminalNode DOT() { return getToken(PascalParser.DOT, 0); }
		public TerminalNode INTERFACE() { return getToken(PascalParser.INTERFACE, 0); }
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(184);
			((ProgramContext)_localctx).programHeading = programHeading();
			setState(186);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==INTERFACE) {
				{
				setState(185);
				match(INTERFACE);
				}
			}

			setState(188);
			((ProgramContext)_localctx).block = block();
			setState(189);
			match(DOT);

			        ASTNode a = ((ProgramContext)_localctx).programHeading.ast;
			        ASTNode b = new UniversalNode(((ProgramContext)_localctx).block.astList, "block");
			        ASTNode dot = new TextNode(".");

			        ((ProgramContext)_localctx).ast =  new UniversalNode(Arrays.asList(new ASTNode[]{a, b, dot}), "Program");
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProgramHeadingContext extends ParserRuleContext {
		public ASTNode ast;
		public IdentifierContext identifier;
		public TerminalNode PROGRAM() { return getToken(PascalParser.PROGRAM, 0); }
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(PascalParser.SEMI, 0); }
		public TerminalNode LPAREN() { return getToken(PascalParser.LPAREN, 0); }
		public IdentifierListContext identifierList() {
			return getRuleContext(IdentifierListContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PascalParser.RPAREN, 0); }
		public TerminalNode UNIT() { return getToken(PascalParser.UNIT, 0); }
		public ProgramHeadingContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_programHeading; }
	}

	public final ProgramHeadingContext programHeading() throws RecognitionException {
		ProgramHeadingContext _localctx = new ProgramHeadingContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_programHeading);
		int _la;
		try {
			setState(208);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case PROGRAM:
				enterOuterAlt(_localctx, 1);
				{
				setState(192);
				match(PROGRAM);
				setState(193);
				((ProgramHeadingContext)_localctx).identifier = identifier();
				setState(198);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==LPAREN) {
					{
					setState(194);
					match(LPAREN);
					setState(195);
					identifierList();
					setState(196);
					match(RPAREN);
					}
				}

				setState(200);
				match(SEMI);

				        ((ProgramHeadingContext)_localctx).ast =  new StringNode(new TextNode("program " + (((ProgramHeadingContext)_localctx).identifier!=null?_input.getText(((ProgramHeadingContext)_localctx).identifier.start,((ProgramHeadingContext)_localctx).identifier.stop):null)));
				}
				break;
			case UNIT:
				enterOuterAlt(_localctx, 2);
				{
				setState(203);
				match(UNIT);
				setState(204);
				((ProgramHeadingContext)_localctx).identifier = identifier();
				setState(205);
				match(SEMI);

				        ((ProgramHeadingContext)_localctx).ast =  new StringNode(new TextNode("unit " + (((ProgramHeadingContext)_localctx).identifier!=null?_input.getText(((ProgramHeadingContext)_localctx).identifier.start,((ProgramHeadingContext)_localctx).identifier.stop):null)));
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IdentifierContext extends ParserRuleContext {
		public TerminalNode IDENT() { return getToken(PascalParser.IDENT, 0); }
		public IdentifierContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_identifier; }
	}

	public final IdentifierContext identifier() throws RecognitionException {
		IdentifierContext _localctx = new IdentifierContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_identifier);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(210);
			match(IDENT);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockContext extends ParserRuleContext {
		public List<ASTNode> astList = new ArrayList<>();
		public ConstantDefinitionPartContext constantDefinitionPart;
		public VariableDeclarationPartContext variableDeclarationPart;
		public ProcedureAndFunctionDeclarationPartContext procedureAndFunctionDeclarationPart;
		public CompoundStatementContext compoundStatement;
		public CompoundStatementContext compoundStatement() {
			return getRuleContext(CompoundStatementContext.class,0);
		}
		public List<LabelDeclarationPartContext> labelDeclarationPart() {
			return getRuleContexts(LabelDeclarationPartContext.class);
		}
		public LabelDeclarationPartContext labelDeclarationPart(int i) {
			return getRuleContext(LabelDeclarationPartContext.class,i);
		}
		public List<ConstantDefinitionPartContext> constantDefinitionPart() {
			return getRuleContexts(ConstantDefinitionPartContext.class);
		}
		public ConstantDefinitionPartContext constantDefinitionPart(int i) {
			return getRuleContext(ConstantDefinitionPartContext.class,i);
		}
		public List<TypeDefinitionPartContext> typeDefinitionPart() {
			return getRuleContexts(TypeDefinitionPartContext.class);
		}
		public TypeDefinitionPartContext typeDefinitionPart(int i) {
			return getRuleContext(TypeDefinitionPartContext.class,i);
		}
		public List<VariableDeclarationPartContext> variableDeclarationPart() {
			return getRuleContexts(VariableDeclarationPartContext.class);
		}
		public VariableDeclarationPartContext variableDeclarationPart(int i) {
			return getRuleContext(VariableDeclarationPartContext.class,i);
		}
		public List<ProcedureAndFunctionDeclarationPartContext> procedureAndFunctionDeclarationPart() {
			return getRuleContexts(ProcedureAndFunctionDeclarationPartContext.class);
		}
		public ProcedureAndFunctionDeclarationPartContext procedureAndFunctionDeclarationPart(int i) {
			return getRuleContext(ProcedureAndFunctionDeclarationPartContext.class,i);
		}
		public List<UsesUnitsPartContext> usesUnitsPart() {
			return getRuleContexts(UsesUnitsPartContext.class);
		}
		public UsesUnitsPartContext usesUnitsPart(int i) {
			return getRuleContext(UsesUnitsPartContext.class,i);
		}
		public List<TerminalNode> IMPLEMENTATION() { return getTokens(PascalParser.IMPLEMENTATION); }
		public TerminalNode IMPLEMENTATION(int i) {
			return getToken(PascalParser.IMPLEMENTATION, i);
		}
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(227);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (((((_la - 8)) & ~0x3f) == 0 && ((1L << (_la - 8)) & ((1L << (CONST - 8)) | (1L << (FUNCTION - 8)) | (1L << (LABEL - 8)) | (1L << (PROCEDURE - 8)) | (1L << (TYPE - 8)) | (1L << (VAR - 8)) | (1L << (USES - 8)) | (1L << (IMPLEMENTATION - 8)))) != 0)) {
				{
				setState(225);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case LABEL:
					{
					setState(212);
					labelDeclarationPart();
					}
					break;
				case CONST:
					{
					setState(213);
					((BlockContext)_localctx).constantDefinitionPart = constantDefinitionPart();
					_localctx.astList.add(((BlockContext)_localctx).constantDefinitionPart.ast);
					}
					break;
				case TYPE:
					{
					setState(216);
					typeDefinitionPart();
					}
					break;
				case VAR:
					{
					setState(217);
					((BlockContext)_localctx).variableDeclarationPart = variableDeclarationPart();
					_localctx.astList.add(((BlockContext)_localctx).variableDeclarationPart.ast);
					}
					break;
				case FUNCTION:
				case PROCEDURE:
					{
					setState(220);
					((BlockContext)_localctx).procedureAndFunctionDeclarationPart = procedureAndFunctionDeclarationPart();
					_localctx.astList.add(((BlockContext)_localctx).procedureAndFunctionDeclarationPart.ast);
					}
					break;
				case USES:
					{
					setState(223);
					usesUnitsPart();
					}
					break;
				case IMPLEMENTATION:
					{
					setState(224);
					match(IMPLEMENTATION);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				setState(229);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(230);
			((BlockContext)_localctx).compoundStatement = compoundStatement();
			_localctx.astList.add(((BlockContext)_localctx).compoundStatement.ast);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UsesUnitsPartContext extends ParserRuleContext {
		public TerminalNode USES() { return getToken(PascalParser.USES, 0); }
		public IdentifierListContext identifierList() {
			return getRuleContext(IdentifierListContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(PascalParser.SEMI, 0); }
		public UsesUnitsPartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_usesUnitsPart; }
	}

	public final UsesUnitsPartContext usesUnitsPart() throws RecognitionException {
		UsesUnitsPartContext _localctx = new UsesUnitsPartContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_usesUnitsPart);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(233);
			match(USES);
			setState(234);
			identifierList();
			setState(235);
			match(SEMI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LabelDeclarationPartContext extends ParserRuleContext {
		public TerminalNode LABEL() { return getToken(PascalParser.LABEL, 0); }
		public List<LabelContext> label() {
			return getRuleContexts(LabelContext.class);
		}
		public LabelContext label(int i) {
			return getRuleContext(LabelContext.class,i);
		}
		public TerminalNode SEMI() { return getToken(PascalParser.SEMI, 0); }
		public List<TerminalNode> COMMA() { return getTokens(PascalParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(PascalParser.COMMA, i);
		}
		public LabelDeclarationPartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_labelDeclarationPart; }
	}

	public final LabelDeclarationPartContext labelDeclarationPart() throws RecognitionException {
		LabelDeclarationPartContext _localctx = new LabelDeclarationPartContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_labelDeclarationPart);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(237);
			match(LABEL);
			setState(238);
			label();
			setState(243);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(239);
				match(COMMA);
				setState(240);
				label();
				}
				}
				setState(245);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(246);
			match(SEMI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LabelContext extends ParserRuleContext {
		public UnsignedIntegerContext unsignedInteger() {
			return getRuleContext(UnsignedIntegerContext.class,0);
		}
		public LabelContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_label; }
	}

	public final LabelContext label() throws RecognitionException {
		LabelContext _localctx = new LabelContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_label);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(248);
			unsignedInteger();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantDefinitionPartContext extends ParserRuleContext {
		public ASTNode ast;
		public ConstantDefinitionContext constantDefinition;
		public TerminalNode CONST() { return getToken(PascalParser.CONST, 0); }
		public List<ConstantDefinitionContext> constantDefinition() {
			return getRuleContexts(ConstantDefinitionContext.class);
		}
		public ConstantDefinitionContext constantDefinition(int i) {
			return getRuleContext(ConstantDefinitionContext.class,i);
		}
		public List<TerminalNode> SEMI() { return getTokens(PascalParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(PascalParser.SEMI, i);
		}
		public ConstantDefinitionPartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constantDefinitionPart; }
	}

	public final ConstantDefinitionPartContext constantDefinitionPart() throws RecognitionException {
		ConstantDefinitionPartContext _localctx = new ConstantDefinitionPartContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_constantDefinitionPart);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(250);
			match(CONST);
			setState(251);
			((ConstantDefinitionPartContext)_localctx).constantDefinition = constantDefinition();

			        List<ASTNode> list = new ArrayList<>();
			        list.add(new TextNode("const\n"));
			        list.add(new StringNode(((ConstantDefinitionPartContext)_localctx).constantDefinition.ast));
			    
			setState(259);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,6,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(253);
					match(SEMI);
					setState(254);
					((ConstantDefinitionPartContext)_localctx).constantDefinition = constantDefinition();
					list.add(new StringNode(((ConstantDefinitionPartContext)_localctx).constantDefinition.ast));
					}
					} 
				}
				setState(261);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,6,_ctx);
			}
			setState(262);
			match(SEMI);
			((ConstantDefinitionPartContext)_localctx).ast =  new UniversalNode(list, "Consts");
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantDefinitionContext extends ParserRuleContext {
		public ASTNode ast;
		public IdentifierContext identifier;
		public ConstantContext constant;
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode EQUAL() { return getToken(PascalParser.EQUAL, 0); }
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public ConstantDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constantDefinition; }
	}

	public final ConstantDefinitionContext constantDefinition() throws RecognitionException {
		ConstantDefinitionContext _localctx = new ConstantDefinitionContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_constantDefinition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(265);
			((ConstantDefinitionContext)_localctx).identifier = identifier();
			setState(266);
			match(EQUAL);
			setState(267);
			((ConstantDefinitionContext)_localctx).constant = constant();

			        ASTNode a = new TextNode((((ConstantDefinitionContext)_localctx).identifier!=null?_input.getText(((ConstantDefinitionContext)_localctx).identifier.start,((ConstantDefinitionContext)_localctx).identifier.stop):null));
			        ASTNode b = ((ConstantDefinitionContext)_localctx).constant.ast;
			        ((ConstantDefinitionContext)_localctx).ast =  new BinOp(a, b, "=");
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantChrContext extends ParserRuleContext {
		public TerminalNode CHR() { return getToken(PascalParser.CHR, 0); }
		public TerminalNode LPAREN() { return getToken(PascalParser.LPAREN, 0); }
		public UnsignedIntegerContext unsignedInteger() {
			return getRuleContext(UnsignedIntegerContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PascalParser.RPAREN, 0); }
		public ConstantChrContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constantChr; }
	}

	public final ConstantChrContext constantChr() throws RecognitionException {
		ConstantChrContext _localctx = new ConstantChrContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_constantChr);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(270);
			match(CHR);
			setState(271);
			match(LPAREN);
			setState(272);
			unsignedInteger();
			setState(273);
			match(RPAREN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantContext extends ParserRuleContext {
		public ASTNode ast;
		public UnsignedNumberContext unsignedNumber;
		public SignContext sign;
		public IdentifierContext identifier;
		public StringContext string;
		public UnsignedNumberContext unsignedNumber() {
			return getRuleContext(UnsignedNumberContext.class,0);
		}
		public SignContext sign() {
			return getRuleContext(SignContext.class,0);
		}
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public ConstantChrContext constantChr() {
			return getRuleContext(ConstantChrContext.class,0);
		}
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_constant);
		try {
			setState(293);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(275);
				((ConstantContext)_localctx).unsignedNumber = unsignedNumber();
				((ConstantContext)_localctx).ast =  new ConstNode((((ConstantContext)_localctx).unsignedNumber!=null?_input.getText(((ConstantContext)_localctx).unsignedNumber.start,((ConstantContext)_localctx).unsignedNumber.stop):null), "unsignedNumber");
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(278);
				((ConstantContext)_localctx).sign = sign();
				setState(279);
				((ConstantContext)_localctx).unsignedNumber = unsignedNumber();
				((ConstantContext)_localctx).ast =  new ConstNode((((ConstantContext)_localctx).sign!=null?_input.getText(((ConstantContext)_localctx).sign.start,((ConstantContext)_localctx).sign.stop):null) + (((ConstantContext)_localctx).unsignedNumber!=null?_input.getText(((ConstantContext)_localctx).unsignedNumber.start,((ConstantContext)_localctx).unsignedNumber.stop):null), "signedNumber");
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(282);
				((ConstantContext)_localctx).identifier = identifier();
				((ConstantContext)_localctx).ast =  new ConstNode((((ConstantContext)_localctx).identifier!=null?_input.getText(((ConstantContext)_localctx).identifier.start,((ConstantContext)_localctx).identifier.stop):null), "identifier");
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(285);
				((ConstantContext)_localctx).sign = sign();
				setState(286);
				((ConstantContext)_localctx).identifier = identifier();
				((ConstantContext)_localctx).ast =  new ConstNode((((ConstantContext)_localctx).sign!=null?_input.getText(((ConstantContext)_localctx).sign.start,((ConstantContext)_localctx).sign.stop):null) + (((ConstantContext)_localctx).identifier!=null?_input.getText(((ConstantContext)_localctx).identifier.start,((ConstantContext)_localctx).identifier.stop):null), "signedIdentifier");
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(289);
				((ConstantContext)_localctx).string = string();
				((ConstantContext)_localctx).ast =  new ConstNode((((ConstantContext)_localctx).string!=null?_input.getText(((ConstantContext)_localctx).string.start,((ConstantContext)_localctx).string.stop):null), "string");
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(292);
				constantChr();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UnsignedNumberContext extends ParserRuleContext {
		public UnsignedIntegerContext unsignedInteger() {
			return getRuleContext(UnsignedIntegerContext.class,0);
		}
		public UnsignedRealContext unsignedReal() {
			return getRuleContext(UnsignedRealContext.class,0);
		}
		public UnsignedNumberContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unsignedNumber; }
	}

	public final UnsignedNumberContext unsignedNumber() throws RecognitionException {
		UnsignedNumberContext _localctx = new UnsignedNumberContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_unsignedNumber);
		try {
			setState(297);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(295);
				unsignedInteger();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(296);
				unsignedReal();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UnsignedIntegerContext extends ParserRuleContext {
		public TerminalNode NUM_INT() { return getToken(PascalParser.NUM_INT, 0); }
		public UnsignedIntegerContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unsignedInteger; }
	}

	public final UnsignedIntegerContext unsignedInteger() throws RecognitionException {
		UnsignedIntegerContext _localctx = new UnsignedIntegerContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_unsignedInteger);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(299);
			match(NUM_INT);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UnsignedRealContext extends ParserRuleContext {
		public TerminalNode NUM_INT() { return getToken(PascalParser.NUM_INT, 0); }
		public UnsignedRealContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unsignedReal; }
	}

	public final UnsignedRealContext unsignedReal() throws RecognitionException {
		UnsignedRealContext _localctx = new UnsignedRealContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_unsignedReal);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(301);
			match(NUM_INT);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SignContext extends ParserRuleContext {
		public TerminalNode PLUS() { return getToken(PascalParser.PLUS, 0); }
		public TerminalNode MINUS() { return getToken(PascalParser.MINUS, 0); }
		public SignContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sign; }
	}

	public final SignContext sign() throws RecognitionException {
		SignContext _localctx = new SignContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_sign);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(303);
			_la = _input.LA(1);
			if ( !(_la==PLUS || _la==MINUS) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StringContext extends ParserRuleContext {
		public TerminalNode STRING_LITERAL() { return getToken(PascalParser.STRING_LITERAL, 0); }
		public StringContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_string; }
	}

	public final StringContext string() throws RecognitionException {
		StringContext _localctx = new StringContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_string);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(305);
			match(STRING_LITERAL);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeDefinitionPartContext extends ParserRuleContext {
		public TerminalNode TYPE() { return getToken(PascalParser.TYPE, 0); }
		public List<TypeDefinitionContext> typeDefinition() {
			return getRuleContexts(TypeDefinitionContext.class);
		}
		public TypeDefinitionContext typeDefinition(int i) {
			return getRuleContext(TypeDefinitionContext.class,i);
		}
		public List<TerminalNode> SEMI() { return getTokens(PascalParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(PascalParser.SEMI, i);
		}
		public TypeDefinitionPartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_typeDefinitionPart; }
	}

	public final TypeDefinitionPartContext typeDefinitionPart() throws RecognitionException {
		TypeDefinitionPartContext _localctx = new TypeDefinitionPartContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_typeDefinitionPart);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(307);
			match(TYPE);
			setState(311); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(308);
				typeDefinition();
				setState(309);
				match(SEMI);
				}
				}
				setState(313); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==IDENT );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeDefinitionContext extends ParserRuleContext {
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode EQUAL() { return getToken(PascalParser.EQUAL, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public FunctionTypeContext functionType() {
			return getRuleContext(FunctionTypeContext.class,0);
		}
		public ProcedureTypeContext procedureType() {
			return getRuleContext(ProcedureTypeContext.class,0);
		}
		public TypeDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_typeDefinition; }
	}

	public final TypeDefinitionContext typeDefinition() throws RecognitionException {
		TypeDefinitionContext _localctx = new TypeDefinitionContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_typeDefinition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(315);
			identifier();
			setState(316);
			match(EQUAL);
			setState(320);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ARRAY:
			case BOOLEAN:
			case CHAR:
			case CHR:
			case FILE:
			case INTEGER:
			case PACKED:
			case REAL:
			case RECORD:
			case SET:
			case PLUS:
			case MINUS:
			case LPAREN:
			case POINTER:
			case STRING:
			case IDENT:
			case STRING_LITERAL:
			case NUM_INT:
				{
				setState(317);
				type();
				}
				break;
			case FUNCTION:
				{
				setState(318);
				functionType();
				}
				break;
			case PROCEDURE:
				{
				setState(319);
				procedureType();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionTypeContext extends ParserRuleContext {
		public TerminalNode FUNCTION() { return getToken(PascalParser.FUNCTION, 0); }
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public ResultTypeContext resultType() {
			return getRuleContext(ResultTypeContext.class,0);
		}
		public FormalParameterListContext formalParameterList() {
			return getRuleContext(FormalParameterListContext.class,0);
		}
		public FunctionTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionType; }
	}

	public final FunctionTypeContext functionType() throws RecognitionException {
		FunctionTypeContext _localctx = new FunctionTypeContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_functionType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(322);
			match(FUNCTION);
			setState(324);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LPAREN) {
				{
				setState(323);
				formalParameterList();
				}
			}

			setState(326);
			match(COLON);
			setState(327);
			resultType();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProcedureTypeContext extends ParserRuleContext {
		public TerminalNode PROCEDURE() { return getToken(PascalParser.PROCEDURE, 0); }
		public FormalParameterListContext formalParameterList() {
			return getRuleContext(FormalParameterListContext.class,0);
		}
		public ProcedureTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_procedureType; }
	}

	public final ProcedureTypeContext procedureType() throws RecognitionException {
		ProcedureTypeContext _localctx = new ProcedureTypeContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_procedureType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(329);
			match(PROCEDURE);
			setState(331);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LPAREN) {
				{
				setState(330);
				formalParameterList();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public ASTNode ast;
		public SimpleTypeContext simpleType;
		public StructuredTypeContext structuredType;
		public PointerTypeContext pointerType;
		public SimpleTypeContext simpleType() {
			return getRuleContext(SimpleTypeContext.class,0);
		}
		public StructuredTypeContext structuredType() {
			return getRuleContext(StructuredTypeContext.class,0);
		}
		public PointerTypeContext pointerType() {
			return getRuleContext(PointerTypeContext.class,0);
		}
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_type);
		try {
			setState(342);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case BOOLEAN:
			case CHAR:
			case CHR:
			case INTEGER:
			case REAL:
			case PLUS:
			case MINUS:
			case LPAREN:
			case STRING:
			case IDENT:
			case STRING_LITERAL:
			case NUM_INT:
				enterOuterAlt(_localctx, 1);
				{
				setState(333);
				((TypeContext)_localctx).simpleType = simpleType();
				((TypeContext)_localctx).ast =  ((TypeContext)_localctx).simpleType.ast;
				}
				break;
			case ARRAY:
			case FILE:
			case PACKED:
			case RECORD:
			case SET:
				enterOuterAlt(_localctx, 2);
				{
				setState(336);
				((TypeContext)_localctx).structuredType = structuredType();
				((TypeContext)_localctx).ast =  ((TypeContext)_localctx).structuredType.ast;
				}
				break;
			case POINTER:
				enterOuterAlt(_localctx, 3);
				{
				setState(339);
				((TypeContext)_localctx).pointerType = pointerType();
				((TypeContext)_localctx).ast =  ((TypeContext)_localctx).pointerType.ast;
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SimpleTypeContext extends ParserRuleContext {
		public ASTNode ast;
		public SubrangeTypeContext subrangeType;
		public TypeIdentifierContext typeIdentifier;
		public ScalarTypeContext scalarType() {
			return getRuleContext(ScalarTypeContext.class,0);
		}
		public SubrangeTypeContext subrangeType() {
			return getRuleContext(SubrangeTypeContext.class,0);
		}
		public TypeIdentifierContext typeIdentifier() {
			return getRuleContext(TypeIdentifierContext.class,0);
		}
		public StringtypeContext stringtype() {
			return getRuleContext(StringtypeContext.class,0);
		}
		public SimpleTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_simpleType; }
	}

	public final SimpleTypeContext simpleType() throws RecognitionException {
		SimpleTypeContext _localctx = new SimpleTypeContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_simpleType);
		try {
			setState(354);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(344);
				scalarType();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(345);
				((SimpleTypeContext)_localctx).subrangeType = subrangeType();
				((SimpleTypeContext)_localctx).ast =  ((SimpleTypeContext)_localctx).subrangeType.ast;
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(348);
				((SimpleTypeContext)_localctx).typeIdentifier = typeIdentifier();
				((SimpleTypeContext)_localctx).ast =  new TypeNode((((SimpleTypeContext)_localctx).typeIdentifier!=null?_input.getText(((SimpleTypeContext)_localctx).typeIdentifier.start,((SimpleTypeContext)_localctx).typeIdentifier.stop):null));
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(351);
				stringtype();
				((SimpleTypeContext)_localctx).ast =  new TypeNode("string");
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ScalarTypeContext extends ParserRuleContext {
		public TerminalNode LPAREN() { return getToken(PascalParser.LPAREN, 0); }
		public IdentifierListContext identifierList() {
			return getRuleContext(IdentifierListContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PascalParser.RPAREN, 0); }
		public ScalarTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_scalarType; }
	}

	public final ScalarTypeContext scalarType() throws RecognitionException {
		ScalarTypeContext _localctx = new ScalarTypeContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_scalarType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(356);
			match(LPAREN);
			setState(357);
			identifierList();
			setState(358);
			match(RPAREN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SubrangeTypeContext extends ParserRuleContext {
		public ASTNode ast;
		public ConstantContext constant;
		public List<ConstantContext> constant() {
			return getRuleContexts(ConstantContext.class);
		}
		public ConstantContext constant(int i) {
			return getRuleContext(ConstantContext.class,i);
		}
		public TerminalNode DOTDOT() { return getToken(PascalParser.DOTDOT, 0); }
		public SubrangeTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_subrangeType; }
	}

	public final SubrangeTypeContext subrangeType() throws RecognitionException {
		SubrangeTypeContext _localctx = new SubrangeTypeContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_subrangeType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(360);
			((SubrangeTypeContext)_localctx).constant = constant();
			ASTNode l = ((SubrangeTypeContext)_localctx).constant.ast;
			setState(362);
			match(DOTDOT);
			setState(363);
			((SubrangeTypeContext)_localctx).constant = constant();
			ASTNode r = ((SubrangeTypeContext)_localctx).constant.ast; ((SubrangeTypeContext)_localctx).ast =  new TypeNode("range", l, r);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeIdentifierContext extends ParserRuleContext {
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode CHAR() { return getToken(PascalParser.CHAR, 0); }
		public TerminalNode BOOLEAN() { return getToken(PascalParser.BOOLEAN, 0); }
		public TerminalNode INTEGER() { return getToken(PascalParser.INTEGER, 0); }
		public TerminalNode REAL() { return getToken(PascalParser.REAL, 0); }
		public TerminalNode STRING() { return getToken(PascalParser.STRING, 0); }
		public TypeIdentifierContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_typeIdentifier; }
	}

	public final TypeIdentifierContext typeIdentifier() throws RecognitionException {
		TypeIdentifierContext _localctx = new TypeIdentifierContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_typeIdentifier);
		int _la;
		try {
			setState(368);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IDENT:
				enterOuterAlt(_localctx, 1);
				{
				setState(366);
				identifier();
				}
				break;
			case BOOLEAN:
			case CHAR:
			case INTEGER:
			case REAL:
			case STRING:
				enterOuterAlt(_localctx, 2);
				{
				setState(367);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << BOOLEAN) | (1L << CHAR) | (1L << INTEGER) | (1L << REAL))) != 0) || _la==STRING) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StructuredTypeContext extends ParserRuleContext {
		public ASTNode ast;
		public UnpackedStructuredTypeContext unpackedStructuredType;
		public TerminalNode PACKED() { return getToken(PascalParser.PACKED, 0); }
		public UnpackedStructuredTypeContext unpackedStructuredType() {
			return getRuleContext(UnpackedStructuredTypeContext.class,0);
		}
		public StructuredTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structuredType; }
	}

	public final StructuredTypeContext structuredType() throws RecognitionException {
		StructuredTypeContext _localctx = new StructuredTypeContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_structuredType);
		try {
			setState(375);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case PACKED:
				enterOuterAlt(_localctx, 1);
				{
				setState(370);
				match(PACKED);
				setState(371);
				unpackedStructuredType();
				}
				break;
			case ARRAY:
			case FILE:
			case RECORD:
			case SET:
				enterOuterAlt(_localctx, 2);
				{
				setState(372);
				((StructuredTypeContext)_localctx).unpackedStructuredType = unpackedStructuredType();
				((StructuredTypeContext)_localctx).ast =  ((StructuredTypeContext)_localctx).unpackedStructuredType.ast;
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UnpackedStructuredTypeContext extends ParserRuleContext {
		public ASTNode ast;
		public ArrayTypeContext arrayType;
		public ArrayTypeContext arrayType() {
			return getRuleContext(ArrayTypeContext.class,0);
		}
		public RecordTypeContext recordType() {
			return getRuleContext(RecordTypeContext.class,0);
		}
		public SetTypeContext setType() {
			return getRuleContext(SetTypeContext.class,0);
		}
		public FileTypeContext fileType() {
			return getRuleContext(FileTypeContext.class,0);
		}
		public UnpackedStructuredTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unpackedStructuredType; }
	}

	public final UnpackedStructuredTypeContext unpackedStructuredType() throws RecognitionException {
		UnpackedStructuredTypeContext _localctx = new UnpackedStructuredTypeContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_unpackedStructuredType);
		try {
			setState(383);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ARRAY:
				enterOuterAlt(_localctx, 1);
				{
				setState(377);
				((UnpackedStructuredTypeContext)_localctx).arrayType = arrayType();
				((UnpackedStructuredTypeContext)_localctx).ast =  ((UnpackedStructuredTypeContext)_localctx).arrayType.ast;
				}
				break;
			case RECORD:
				enterOuterAlt(_localctx, 2);
				{
				setState(380);
				recordType();
				}
				break;
			case SET:
				enterOuterAlt(_localctx, 3);
				{
				setState(381);
				setType();
				}
				break;
			case FILE:
				enterOuterAlt(_localctx, 4);
				{
				setState(382);
				fileType();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StringtypeContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(PascalParser.STRING, 0); }
		public TerminalNode LBRACK() { return getToken(PascalParser.LBRACK, 0); }
		public TerminalNode RBRACK() { return getToken(PascalParser.RBRACK, 0); }
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public UnsignedNumberContext unsignedNumber() {
			return getRuleContext(UnsignedNumberContext.class,0);
		}
		public StringtypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stringtype; }
	}

	public final StringtypeContext stringtype() throws RecognitionException {
		StringtypeContext _localctx = new StringtypeContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_stringtype);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(385);
			match(STRING);
			setState(386);
			match(LBRACK);
			setState(389);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IDENT:
				{
				setState(387);
				identifier();
				}
				break;
			case NUM_INT:
				{
				setState(388);
				unsignedNumber();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(391);
			match(RBRACK);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArrayTypeContext extends ParserRuleContext {
		public ASTNode ast;
		public TypeListContext typeList;
		public ComponentTypeContext componentType;
		public TerminalNode ARRAY() { return getToken(PascalParser.ARRAY, 0); }
		public TerminalNode LBRACK() { return getToken(PascalParser.LBRACK, 0); }
		public TypeListContext typeList() {
			return getRuleContext(TypeListContext.class,0);
		}
		public TerminalNode RBRACK() { return getToken(PascalParser.RBRACK, 0); }
		public TerminalNode OF() { return getToken(PascalParser.OF, 0); }
		public ComponentTypeContext componentType() {
			return getRuleContext(ComponentTypeContext.class,0);
		}
		public TerminalNode LBRACK2() { return getToken(PascalParser.LBRACK2, 0); }
		public TerminalNode RBRACK2() { return getToken(PascalParser.RBRACK2, 0); }
		public ArrayTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayType; }
	}

	public final ArrayTypeContext arrayType() throws RecognitionException {
		ArrayTypeContext _localctx = new ArrayTypeContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_arrayType);
		try {
			setState(408);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(393);
				match(ARRAY);
				setState(394);
				match(LBRACK);
				setState(395);
				((ArrayTypeContext)_localctx).typeList = typeList();
				setState(396);
				match(RBRACK);
				setState(397);
				match(OF);
				setState(398);
				((ArrayTypeContext)_localctx).componentType = componentType();
				((ArrayTypeContext)_localctx).ast =  new TypeNode("array", ((ArrayTypeContext)_localctx).typeList.list, ((ArrayTypeContext)_localctx).componentType.ast);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(401);
				match(ARRAY);
				setState(402);
				match(LBRACK2);
				setState(403);
				typeList();
				setState(404);
				match(RBRACK2);
				setState(405);
				match(OF);
				setState(406);
				componentType();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeListContext extends ParserRuleContext {
		public List<ASTNode> list = new ArrayList();
		public IndexTypeContext indexType;
		public List<IndexTypeContext> indexType() {
			return getRuleContexts(IndexTypeContext.class);
		}
		public IndexTypeContext indexType(int i) {
			return getRuleContext(IndexTypeContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(PascalParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(PascalParser.COMMA, i);
		}
		public TypeListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_typeList; }
	}

	public final TypeListContext typeList() throws RecognitionException {
		TypeListContext _localctx = new TypeListContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_typeList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(410);
			((TypeListContext)_localctx).indexType = indexType();
			_localctx.list.add(((TypeListContext)_localctx).indexType.ast);
			setState(418);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(412);
				match(COMMA);
				setState(413);
				((TypeListContext)_localctx).indexType = indexType();
				_localctx.list.add(((TypeListContext)_localctx).indexType.ast);
				}
				}
				setState(420);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IndexTypeContext extends ParserRuleContext {
		public ASTNode ast;
		public SimpleTypeContext simpleType;
		public SimpleTypeContext simpleType() {
			return getRuleContext(SimpleTypeContext.class,0);
		}
		public IndexTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_indexType; }
	}

	public final IndexTypeContext indexType() throws RecognitionException {
		IndexTypeContext _localctx = new IndexTypeContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_indexType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(421);
			((IndexTypeContext)_localctx).simpleType = simpleType();
			((IndexTypeContext)_localctx).ast =  ((IndexTypeContext)_localctx).simpleType.ast;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ComponentTypeContext extends ParserRuleContext {
		public ASTNode ast;
		public TypeContext type;
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ComponentTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_componentType; }
	}

	public final ComponentTypeContext componentType() throws RecognitionException {
		ComponentTypeContext _localctx = new ComponentTypeContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_componentType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(424);
			((ComponentTypeContext)_localctx).type = type();
			((ComponentTypeContext)_localctx).ast =  ((ComponentTypeContext)_localctx).type.ast;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class RecordTypeContext extends ParserRuleContext {
		public TerminalNode RECORD() { return getToken(PascalParser.RECORD, 0); }
		public FieldListContext fieldList() {
			return getRuleContext(FieldListContext.class,0);
		}
		public TerminalNode END() { return getToken(PascalParser.END, 0); }
		public RecordTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_recordType; }
	}

	public final RecordTypeContext recordType() throws RecognitionException {
		RecordTypeContext _localctx = new RecordTypeContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_recordType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(427);
			match(RECORD);
			setState(428);
			fieldList();
			setState(429);
			match(END);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FieldListContext extends ParserRuleContext {
		public FixedPartContext fixedPart() {
			return getRuleContext(FixedPartContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(PascalParser.SEMI, 0); }
		public VariantPartContext variantPart() {
			return getRuleContext(VariantPartContext.class,0);
		}
		public FieldListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fieldList; }
	}

	public final FieldListContext fieldList() throws RecognitionException {
		FieldListContext _localctx = new FieldListContext(_ctx, getState());
		enterRule(_localctx, 66, RULE_fieldList);
		int _la;
		try {
			setState(437);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IDENT:
				enterOuterAlt(_localctx, 1);
				{
				setState(431);
				fixedPart();
				setState(434);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==SEMI) {
					{
					setState(432);
					match(SEMI);
					setState(433);
					variantPart();
					}
				}

				}
				break;
			case CASE:
				enterOuterAlt(_localctx, 2);
				{
				setState(436);
				variantPart();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FixedPartContext extends ParserRuleContext {
		public List<RecordSectionContext> recordSection() {
			return getRuleContexts(RecordSectionContext.class);
		}
		public RecordSectionContext recordSection(int i) {
			return getRuleContext(RecordSectionContext.class,i);
		}
		public List<TerminalNode> SEMI() { return getTokens(PascalParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(PascalParser.SEMI, i);
		}
		public FixedPartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fixedPart; }
	}

	public final FixedPartContext fixedPart() throws RecognitionException {
		FixedPartContext _localctx = new FixedPartContext(_ctx, getState());
		enterRule(_localctx, 68, RULE_fixedPart);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(439);
			recordSection();
			setState(444);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(440);
					match(SEMI);
					setState(441);
					recordSection();
					}
					} 
				}
				setState(446);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class RecordSectionContext extends ParserRuleContext {
		public IdentifierListContext identifierList() {
			return getRuleContext(IdentifierListContext.class,0);
		}
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public RecordSectionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_recordSection; }
	}

	public final RecordSectionContext recordSection() throws RecognitionException {
		RecordSectionContext _localctx = new RecordSectionContext(_ctx, getState());
		enterRule(_localctx, 70, RULE_recordSection);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(447);
			identifierList();
			setState(448);
			match(COLON);
			setState(449);
			type();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariantPartContext extends ParserRuleContext {
		public TerminalNode CASE() { return getToken(PascalParser.CASE, 0); }
		public TagContext tag() {
			return getRuleContext(TagContext.class,0);
		}
		public TerminalNode OF() { return getToken(PascalParser.OF, 0); }
		public List<VariantContext> variant() {
			return getRuleContexts(VariantContext.class);
		}
		public VariantContext variant(int i) {
			return getRuleContext(VariantContext.class,i);
		}
		public List<TerminalNode> SEMI() { return getTokens(PascalParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(PascalParser.SEMI, i);
		}
		public VariantPartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variantPart; }
	}

	public final VariantPartContext variantPart() throws RecognitionException {
		VariantPartContext _localctx = new VariantPartContext(_ctx, getState());
		enterRule(_localctx, 72, RULE_variantPart);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(451);
			match(CASE);
			setState(452);
			tag();
			setState(453);
			match(OF);
			setState(454);
			variant();
			setState(459);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SEMI) {
				{
				{
				setState(455);
				match(SEMI);
				setState(456);
				variant();
				}
				}
				setState(461);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TagContext extends ParserRuleContext {
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public TypeIdentifierContext typeIdentifier() {
			return getRuleContext(TypeIdentifierContext.class,0);
		}
		public TagContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_tag; }
	}

	public final TagContext tag() throws RecognitionException {
		TagContext _localctx = new TagContext(_ctx, getState());
		enterRule(_localctx, 74, RULE_tag);
		try {
			setState(467);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(462);
				identifier();
				setState(463);
				match(COLON);
				setState(464);
				typeIdentifier();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(466);
				typeIdentifier();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariantContext extends ParserRuleContext {
		public ConstListContext constList() {
			return getRuleContext(ConstListContext.class,0);
		}
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public TerminalNode LPAREN() { return getToken(PascalParser.LPAREN, 0); }
		public FieldListContext fieldList() {
			return getRuleContext(FieldListContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PascalParser.RPAREN, 0); }
		public VariantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variant; }
	}

	public final VariantContext variant() throws RecognitionException {
		VariantContext _localctx = new VariantContext(_ctx, getState());
		enterRule(_localctx, 76, RULE_variant);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(469);
			constList();
			setState(470);
			match(COLON);
			setState(471);
			match(LPAREN);
			setState(472);
			fieldList();
			setState(473);
			match(RPAREN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SetTypeContext extends ParserRuleContext {
		public TerminalNode SET() { return getToken(PascalParser.SET, 0); }
		public TerminalNode OF() { return getToken(PascalParser.OF, 0); }
		public BaseTypeContext baseType() {
			return getRuleContext(BaseTypeContext.class,0);
		}
		public SetTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_setType; }
	}

	public final SetTypeContext setType() throws RecognitionException {
		SetTypeContext _localctx = new SetTypeContext(_ctx, getState());
		enterRule(_localctx, 78, RULE_setType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(475);
			match(SET);
			setState(476);
			match(OF);
			setState(477);
			baseType();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BaseTypeContext extends ParserRuleContext {
		public SimpleTypeContext simpleType() {
			return getRuleContext(SimpleTypeContext.class,0);
		}
		public BaseTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_baseType; }
	}

	public final BaseTypeContext baseType() throws RecognitionException {
		BaseTypeContext _localctx = new BaseTypeContext(_ctx, getState());
		enterRule(_localctx, 80, RULE_baseType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(479);
			simpleType();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FileTypeContext extends ParserRuleContext {
		public TerminalNode FILE() { return getToken(PascalParser.FILE, 0); }
		public TerminalNode OF() { return getToken(PascalParser.OF, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public FileTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fileType; }
	}

	public final FileTypeContext fileType() throws RecognitionException {
		FileTypeContext _localctx = new FileTypeContext(_ctx, getState());
		enterRule(_localctx, 82, RULE_fileType);
		try {
			setState(485);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,26,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(481);
				match(FILE);
				setState(482);
				match(OF);
				setState(483);
				type();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(484);
				match(FILE);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PointerTypeContext extends ParserRuleContext {
		public ASTNode ast;
		public TerminalNode POINTER() { return getToken(PascalParser.POINTER, 0); }
		public TypeIdentifierContext typeIdentifier() {
			return getRuleContext(TypeIdentifierContext.class,0);
		}
		public PointerTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pointerType; }
	}

	public final PointerTypeContext pointerType() throws RecognitionException {
		PointerTypeContext _localctx = new PointerTypeContext(_ctx, getState());
		enterRule(_localctx, 84, RULE_pointerType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(487);
			match(POINTER);
			setState(488);
			typeIdentifier();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableDeclarationPartContext extends ParserRuleContext {
		public ASTNode ast;
		public VariableDeclarationContext variableDeclaration;
		public TerminalNode VAR() { return getToken(PascalParser.VAR, 0); }
		public List<VariableDeclarationContext> variableDeclaration() {
			return getRuleContexts(VariableDeclarationContext.class);
		}
		public VariableDeclarationContext variableDeclaration(int i) {
			return getRuleContext(VariableDeclarationContext.class,i);
		}
		public List<TerminalNode> SEMI() { return getTokens(PascalParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(PascalParser.SEMI, i);
		}
		public VariableDeclarationPartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDeclarationPart; }
	}

	public final VariableDeclarationPartContext variableDeclarationPart() throws RecognitionException {
		VariableDeclarationPartContext _localctx = new VariableDeclarationPartContext(_ctx, getState());
		enterRule(_localctx, 86, RULE_variableDeclarationPart);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(490);
			match(VAR);
			setState(491);
			((VariableDeclarationPartContext)_localctx).variableDeclaration = variableDeclaration();

			        List<ASTNode> list = new ArrayList<>();
			        list.add(new TextNode("var\n"));
			        list.add(new StringNode(((VariableDeclarationPartContext)_localctx).variableDeclaration.ast));
			   
			setState(499);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(493);
					match(SEMI);
					setState(494);
					((VariableDeclarationPartContext)_localctx).variableDeclaration = variableDeclaration();
					list.add(new StringNode(((VariableDeclarationPartContext)_localctx).variableDeclaration.ast));
					}
					} 
				}
				setState(501);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
			}
			setState(502);
			match(SEMI);
			((VariableDeclarationPartContext)_localctx).ast =  new UniversalNode(list, "Vars");
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableDeclarationContext extends ParserRuleContext {
		public ASTNode ast;
		public IdentifierListContext identifierList;
		public TypeContext type;
		public IdentifierListContext identifierList() {
			return getRuleContext(IdentifierListContext.class,0);
		}
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public VariableDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDeclaration; }
	}

	public final VariableDeclarationContext variableDeclaration() throws RecognitionException {
		VariableDeclarationContext _localctx = new VariableDeclarationContext(_ctx, getState());
		enterRule(_localctx, 88, RULE_variableDeclaration);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(505);
			((VariableDeclarationContext)_localctx).identifierList = identifierList();
			setState(506);
			match(COLON);
			setState(507);
			((VariableDeclarationContext)_localctx).type = type();

			        List<String> idl = ((VariableDeclarationContext)_localctx).identifierList.idl;
			        ASTNode t = ((VariableDeclarationContext)_localctx).type.ast;
			        ASTNode a = new VarNode(idl.get(0), t);
			        for (int i = 1; i < idl.size(); i++)
			            a = new BinOp(a, new VarNode(idl.get(i), t), ",");
			        ((VariableDeclarationContext)_localctx).ast =   new BinOp(a, t, ":");
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProcedureAndFunctionDeclarationPartContext extends ParserRuleContext {
		public ASTNode ast;
		public ProcedureOrFunctionDeclarationContext procedureOrFunctionDeclaration;
		public ProcedureOrFunctionDeclarationContext procedureOrFunctionDeclaration() {
			return getRuleContext(ProcedureOrFunctionDeclarationContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(PascalParser.SEMI, 0); }
		public ProcedureAndFunctionDeclarationPartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_procedureAndFunctionDeclarationPart; }
	}

	public final ProcedureAndFunctionDeclarationPartContext procedureAndFunctionDeclarationPart() throws RecognitionException {
		ProcedureAndFunctionDeclarationPartContext _localctx = new ProcedureAndFunctionDeclarationPartContext(_ctx, getState());
		enterRule(_localctx, 90, RULE_procedureAndFunctionDeclarationPart);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(510);
			((ProcedureAndFunctionDeclarationPartContext)_localctx).procedureOrFunctionDeclaration = procedureOrFunctionDeclaration();
			setState(511);
			match(SEMI);
			((ProcedureAndFunctionDeclarationPartContext)_localctx).ast =  ((ProcedureAndFunctionDeclarationPartContext)_localctx).procedureOrFunctionDeclaration.ast;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProcedureOrFunctionDeclarationContext extends ParserRuleContext {
		public ASTNode ast;
		public ProcedureDeclarationContext procedureDeclaration;
		public FunctionDeclarationContext functionDeclaration;
		public ProcedureDeclarationContext procedureDeclaration() {
			return getRuleContext(ProcedureDeclarationContext.class,0);
		}
		public FunctionDeclarationContext functionDeclaration() {
			return getRuleContext(FunctionDeclarationContext.class,0);
		}
		public ProcedureOrFunctionDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_procedureOrFunctionDeclaration; }
	}

	public final ProcedureOrFunctionDeclarationContext procedureOrFunctionDeclaration() throws RecognitionException {
		ProcedureOrFunctionDeclarationContext _localctx = new ProcedureOrFunctionDeclarationContext(_ctx, getState());
		enterRule(_localctx, 92, RULE_procedureOrFunctionDeclaration);
		try {
			setState(520);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case PROCEDURE:
				enterOuterAlt(_localctx, 1);
				{
				setState(514);
				((ProcedureOrFunctionDeclarationContext)_localctx).procedureDeclaration = procedureDeclaration();
				((ProcedureOrFunctionDeclarationContext)_localctx).ast =  ((ProcedureOrFunctionDeclarationContext)_localctx).procedureDeclaration.ast;
				}
				break;
			case FUNCTION:
				enterOuterAlt(_localctx, 2);
				{
				setState(517);
				((ProcedureOrFunctionDeclarationContext)_localctx).functionDeclaration = functionDeclaration();
				((ProcedureOrFunctionDeclarationContext)_localctx).ast =  ((ProcedureOrFunctionDeclarationContext)_localctx).functionDeclaration.ast;
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProcedureDeclarationContext extends ParserRuleContext {
		public ASTNode ast;
		public boolean flag = false;
		public IdentifierContext identifier;
		public FormalParameterListContext formalParameterList;
		public BlockContext block;
		public TerminalNode PROCEDURE() { return getToken(PascalParser.PROCEDURE, 0); }
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(PascalParser.SEMI, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public FormalParameterListContext formalParameterList() {
			return getRuleContext(FormalParameterListContext.class,0);
		}
		public ProcedureDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_procedureDeclaration; }
	}

	public final ProcedureDeclarationContext procedureDeclaration() throws RecognitionException {
		ProcedureDeclarationContext _localctx = new ProcedureDeclarationContext(_ctx, getState());
		enterRule(_localctx, 94, RULE_procedureDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(522);
			match(PROCEDURE);
			setState(523);
			((ProcedureDeclarationContext)_localctx).identifier = identifier();
			setState(527);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LPAREN) {
				{
				setState(524);
				((ProcedureDeclarationContext)_localctx).formalParameterList = formalParameterList();
				((ProcedureDeclarationContext)_localctx).flag =  true;
				}
			}

			setState(529);
			match(SEMI);
			setState(530);
			((ProcedureDeclarationContext)_localctx).block = block();

			        ASTNode b = new UniversalNode(((ProcedureDeclarationContext)_localctx).block.astList, "block");
			        ((ProcedureDeclarationContext)_localctx).ast =  new ProcedureNode((((ProcedureDeclarationContext)_localctx).identifier!=null?_input.getText(((ProcedureDeclarationContext)_localctx).identifier.start,((ProcedureDeclarationContext)_localctx).identifier.stop):null), _localctx.flag ? ((ProcedureDeclarationContext)_localctx).formalParameterList.ast : null, b);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FormalParameterListContext extends ParserRuleContext {
		public ASTNode ast;
		public ArrayList<ASTNode> list = new ArrayList();
		public FormalParameterSectionContext formalParameterSection;
		public TerminalNode LPAREN() { return getToken(PascalParser.LPAREN, 0); }
		public List<FormalParameterSectionContext> formalParameterSection() {
			return getRuleContexts(FormalParameterSectionContext.class);
		}
		public FormalParameterSectionContext formalParameterSection(int i) {
			return getRuleContext(FormalParameterSectionContext.class,i);
		}
		public TerminalNode RPAREN() { return getToken(PascalParser.RPAREN, 0); }
		public List<TerminalNode> SEMI() { return getTokens(PascalParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(PascalParser.SEMI, i);
		}
		public FormalParameterListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_formalParameterList; }
	}

	public final FormalParameterListContext formalParameterList() throws RecognitionException {
		FormalParameterListContext _localctx = new FormalParameterListContext(_ctx, getState());
		enterRule(_localctx, 96, RULE_formalParameterList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(533);
			match(LPAREN);
			setState(534);
			((FormalParameterListContext)_localctx).formalParameterSection = formalParameterSection();
			_localctx.list.add(((FormalParameterListContext)_localctx).formalParameterSection.ast);
			setState(542);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SEMI) {
				{
				{
				setState(536);
				match(SEMI);
				setState(537);
				((FormalParameterListContext)_localctx).formalParameterSection = formalParameterSection();
				_localctx.list.add(((FormalParameterListContext)_localctx).formalParameterSection.ast);
				}
				}
				setState(544);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(545);
			match(RPAREN);

			        ((FormalParameterListContext)_localctx).ast =  new UniversalNode(_localctx.list,  "Params");
			   
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FormalParameterSectionContext extends ParserRuleContext {
		public ASTNode ast;
		public ParameterGroupContext parameterGroup;
		public ParameterGroupContext parameterGroup() {
			return getRuleContext(ParameterGroupContext.class,0);
		}
		public TerminalNode VAR() { return getToken(PascalParser.VAR, 0); }
		public TerminalNode FUNCTION() { return getToken(PascalParser.FUNCTION, 0); }
		public TerminalNode PROCEDURE() { return getToken(PascalParser.PROCEDURE, 0); }
		public FormalParameterSectionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_formalParameterSection; }
	}

	public final FormalParameterSectionContext formalParameterSection() throws RecognitionException {
		FormalParameterSectionContext _localctx = new FormalParameterSectionContext(_ctx, getState());
		enterRule(_localctx, 98, RULE_formalParameterSection);
		try {
			setState(559);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IDENT:
				enterOuterAlt(_localctx, 1);
				{
				setState(548);
				((FormalParameterSectionContext)_localctx).parameterGroup = parameterGroup();
				((FormalParameterSectionContext)_localctx).ast =  ((FormalParameterSectionContext)_localctx).parameterGroup.ast;
				}
				break;
			case VAR:
				enterOuterAlt(_localctx, 2);
				{
				setState(551);
				match(VAR);
				setState(552);
				((FormalParameterSectionContext)_localctx).parameterGroup = parameterGroup();
				((FormalParameterSectionContext)_localctx).ast =  new BinOp(new TextNode("var"), ((FormalParameterSectionContext)_localctx).parameterGroup.ast, " ");
				}
				break;
			case FUNCTION:
				enterOuterAlt(_localctx, 3);
				{
				setState(555);
				match(FUNCTION);
				setState(556);
				parameterGroup();
				}
				break;
			case PROCEDURE:
				enterOuterAlt(_localctx, 4);
				{
				setState(557);
				match(PROCEDURE);
				setState(558);
				parameterGroup();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ParameterGroupContext extends ParserRuleContext {
		public ASTNode ast;
		public IdentifierListContext identifierList;
		public TypeIdentifierContext typeIdentifier;
		public IdentifierListContext identifierList() {
			return getRuleContext(IdentifierListContext.class,0);
		}
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public TypeIdentifierContext typeIdentifier() {
			return getRuleContext(TypeIdentifierContext.class,0);
		}
		public ParameterGroupContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameterGroup; }
	}

	public final ParameterGroupContext parameterGroup() throws RecognitionException {
		ParameterGroupContext _localctx = new ParameterGroupContext(_ctx, getState());
		enterRule(_localctx, 100, RULE_parameterGroup);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(561);
			((ParameterGroupContext)_localctx).identifierList = identifierList();
			setState(562);
			match(COLON);
			setState(563);
			((ParameterGroupContext)_localctx).typeIdentifier = typeIdentifier();

			        ASTNode t = new TypeNode((((ParameterGroupContext)_localctx).typeIdentifier!=null?_input.getText(((ParameterGroupContext)_localctx).typeIdentifier.start,((ParameterGroupContext)_localctx).typeIdentifier.stop):null));
			        List<String> idl = ((ParameterGroupContext)_localctx).identifierList.idl;
			        ASTNode a = new VarNode(idl.get(0), t);
			        for (int i = 1; i < idl.size(); i++)
			            a = new BinOp(a, new VarNode(idl.get(i), t), ",");
			        ((ParameterGroupContext)_localctx).ast =   new BinOp(a, t, ":");
			   
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IdentifierListContext extends ParserRuleContext {
		public ArrayList<String> idl = new ArrayList<>();
		public IdentifierContext identifier;
		public List<IdentifierContext> identifier() {
			return getRuleContexts(IdentifierContext.class);
		}
		public IdentifierContext identifier(int i) {
			return getRuleContext(IdentifierContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(PascalParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(PascalParser.COMMA, i);
		}
		public IdentifierListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_identifierList; }
	}

	public final IdentifierListContext identifierList() throws RecognitionException {
		IdentifierListContext _localctx = new IdentifierListContext(_ctx, getState());
		enterRule(_localctx, 102, RULE_identifierList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(566);
			((IdentifierListContext)_localctx).identifier = identifier();
			_localctx.idl.add((((IdentifierListContext)_localctx).identifier!=null?_input.getText(((IdentifierListContext)_localctx).identifier.start,((IdentifierListContext)_localctx).identifier.stop):null));
			setState(574);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(568);
				match(COMMA);
				setState(569);
				((IdentifierListContext)_localctx).identifier = identifier();
				_localctx.idl.add((((IdentifierListContext)_localctx).identifier!=null?_input.getText(((IdentifierListContext)_localctx).identifier.start,((IdentifierListContext)_localctx).identifier.stop):null));
				}
				}
				setState(576);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstListContext extends ParserRuleContext {
		public List<ConstantContext> constant() {
			return getRuleContexts(ConstantContext.class);
		}
		public ConstantContext constant(int i) {
			return getRuleContext(ConstantContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(PascalParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(PascalParser.COMMA, i);
		}
		public ConstListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constList; }
	}

	public final ConstListContext constList() throws RecognitionException {
		ConstListContext _localctx = new ConstListContext(_ctx, getState());
		enterRule(_localctx, 104, RULE_constList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(577);
			constant();
			setState(582);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(578);
				match(COMMA);
				setState(579);
				constant();
				}
				}
				setState(584);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionDeclarationContext extends ParserRuleContext {
		public ASTNode ast;
		public boolean flag = false;
		public IdentifierContext identifier;
		public FormalParameterListContext formalParameterList;
		public ResultTypeContext resultType;
		public BlockContext block;
		public TerminalNode FUNCTION() { return getToken(PascalParser.FUNCTION, 0); }
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public ResultTypeContext resultType() {
			return getRuleContext(ResultTypeContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(PascalParser.SEMI, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public FormalParameterListContext formalParameterList() {
			return getRuleContext(FormalParameterListContext.class,0);
		}
		public FunctionDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDeclaration; }
	}

	public final FunctionDeclarationContext functionDeclaration() throws RecognitionException {
		FunctionDeclarationContext _localctx = new FunctionDeclarationContext(_ctx, getState());
		enterRule(_localctx, 106, RULE_functionDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(585);
			match(FUNCTION);
			setState(586);
			((FunctionDeclarationContext)_localctx).identifier = identifier();
			setState(590);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LPAREN) {
				{
				setState(587);
				((FunctionDeclarationContext)_localctx).formalParameterList = formalParameterList();
				((FunctionDeclarationContext)_localctx).flag =  true;
				}
			}

			setState(592);
			match(COLON);
			setState(593);
			((FunctionDeclarationContext)_localctx).resultType = resultType();
			setState(594);
			match(SEMI);
			setState(595);
			((FunctionDeclarationContext)_localctx).block = block();

			           ASTNode b = new UniversalNode(((FunctionDeclarationContext)_localctx).block.astList, "block");
			           TypeNode t = new TypeNode((((FunctionDeclarationContext)_localctx).resultType!=null?_input.getText(((FunctionDeclarationContext)_localctx).resultType.start,((FunctionDeclarationContext)_localctx).resultType.stop):null));
			           ((FunctionDeclarationContext)_localctx).ast =  new FunctionNode((((FunctionDeclarationContext)_localctx).identifier!=null?_input.getText(((FunctionDeclarationContext)_localctx).identifier.start,((FunctionDeclarationContext)_localctx).identifier.stop):null), t, _localctx.flag ? ((FunctionDeclarationContext)_localctx).formalParameterList.ast : null, b);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ResultTypeContext extends ParserRuleContext {
		public TypeIdentifierContext typeIdentifier() {
			return getRuleContext(TypeIdentifierContext.class,0);
		}
		public ResultTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_resultType; }
	}

	public final ResultTypeContext resultType() throws RecognitionException {
		ResultTypeContext _localctx = new ResultTypeContext(_ctx, getState());
		enterRule(_localctx, 108, RULE_resultType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(598);
			typeIdentifier();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public ASTNode ast;
		public UnlabelledStatementContext unlabelledStatement;
		public LabelContext label() {
			return getRuleContext(LabelContext.class,0);
		}
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public UnlabelledStatementContext unlabelledStatement() {
			return getRuleContext(UnlabelledStatementContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 110, RULE_statement);
		try {
			setState(607);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case NUM_INT:
				enterOuterAlt(_localctx, 1);
				{
				setState(600);
				label();
				setState(601);
				match(COLON);
				setState(602);
				unlabelledStatement();
				}
				break;
			case BEGIN:
			case CASE:
			case ELSE:
			case END:
			case FOR:
			case GOTO:
			case IF:
			case REPEAT:
			case UNTIL:
			case WHILE:
			case WITH:
			case SEMI:
			case AT:
			case IDENT:
				enterOuterAlt(_localctx, 2);
				{
				setState(604);
				((StatementContext)_localctx).unlabelledStatement = unlabelledStatement();
				((StatementContext)_localctx).ast =  ((StatementContext)_localctx).unlabelledStatement.ast;
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UnlabelledStatementContext extends ParserRuleContext {
		public ASTNode ast;
		public SimpleStatementContext simpleStatement;
		public StructuredStatementContext structuredStatement;
		public SimpleStatementContext simpleStatement() {
			return getRuleContext(SimpleStatementContext.class,0);
		}
		public StructuredStatementContext structuredStatement() {
			return getRuleContext(StructuredStatementContext.class,0);
		}
		public UnlabelledStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unlabelledStatement; }
	}

	public final UnlabelledStatementContext unlabelledStatement() throws RecognitionException {
		UnlabelledStatementContext _localctx = new UnlabelledStatementContext(_ctx, getState());
		enterRule(_localctx, 112, RULE_unlabelledStatement);
		try {
			setState(615);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ELSE:
			case END:
			case GOTO:
			case UNTIL:
			case SEMI:
			case AT:
			case IDENT:
				enterOuterAlt(_localctx, 1);
				{
				setState(609);
				((UnlabelledStatementContext)_localctx).simpleStatement = simpleStatement();
				((UnlabelledStatementContext)_localctx).ast =  ((UnlabelledStatementContext)_localctx).simpleStatement.ast;
				}
				break;
			case BEGIN:
			case CASE:
			case FOR:
			case IF:
			case REPEAT:
			case WHILE:
			case WITH:
				enterOuterAlt(_localctx, 2);
				{
				setState(612);
				((UnlabelledStatementContext)_localctx).structuredStatement = structuredStatement();
				((UnlabelledStatementContext)_localctx).ast =  ((UnlabelledStatementContext)_localctx).structuredStatement.ast;
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SimpleStatementContext extends ParserRuleContext {
		public ASTNode ast;
		public AssignmentStatementContext assignmentStatement;
		public ProcedureStatementContext procedureStatement;
		public AssignmentStatementContext assignmentStatement() {
			return getRuleContext(AssignmentStatementContext.class,0);
		}
		public ProcedureStatementContext procedureStatement() {
			return getRuleContext(ProcedureStatementContext.class,0);
		}
		public GotoStatementContext gotoStatement() {
			return getRuleContext(GotoStatementContext.class,0);
		}
		public EmptyStatementContext emptyStatement() {
			return getRuleContext(EmptyStatementContext.class,0);
		}
		public SimpleStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_simpleStatement; }
	}

	public final SimpleStatementContext simpleStatement() throws RecognitionException {
		SimpleStatementContext _localctx = new SimpleStatementContext(_ctx, getState());
		enterRule(_localctx, 114, RULE_simpleStatement);
		try {
			setState(627);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,37,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(617);
				((SimpleStatementContext)_localctx).assignmentStatement = assignmentStatement();
				((SimpleStatementContext)_localctx).ast =  ((SimpleStatementContext)_localctx).assignmentStatement.ast;
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(620);
				((SimpleStatementContext)_localctx).procedureStatement = procedureStatement();
				((SimpleStatementContext)_localctx).ast =  ((SimpleStatementContext)_localctx).procedureStatement.ast;
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(623);
				gotoStatement();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(624);
				emptyStatement();
				((SimpleStatementContext)_localctx).ast =  null;
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AssignmentStatementContext extends ParserRuleContext {
		public ASTNode ast;
		public VariableContext variable;
		public ExpressionContext expression;
		public VariableContext variable() {
			return getRuleContext(VariableContext.class,0);
		}
		public TerminalNode ASSIGN() { return getToken(PascalParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public AssignmentStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignmentStatement; }
	}

	public final AssignmentStatementContext assignmentStatement() throws RecognitionException {
		AssignmentStatementContext _localctx = new AssignmentStatementContext(_ctx, getState());
		enterRule(_localctx, 116, RULE_assignmentStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(629);
			((AssignmentStatementContext)_localctx).variable = variable();
			setState(630);
			match(ASSIGN);
			setState(631);
			((AssignmentStatementContext)_localctx).expression = expression();
			((AssignmentStatementContext)_localctx).ast =  new BinOp(((AssignmentStatementContext)_localctx).variable.ast, ((AssignmentStatementContext)_localctx).expression.ast, ":=");
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableContext extends ParserRuleContext {
		public ASTNode ast;
		public IdentifierContext identifier;
		public ExpressionContext expression;
		public TerminalNode AT() { return getToken(PascalParser.AT, 0); }
		public List<IdentifierContext> identifier() {
			return getRuleContexts(IdentifierContext.class);
		}
		public IdentifierContext identifier(int i) {
			return getRuleContext(IdentifierContext.class,i);
		}
		public List<TerminalNode> LBRACK() { return getTokens(PascalParser.LBRACK); }
		public TerminalNode LBRACK(int i) {
			return getToken(PascalParser.LBRACK, i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> RBRACK() { return getTokens(PascalParser.RBRACK); }
		public TerminalNode RBRACK(int i) {
			return getToken(PascalParser.RBRACK, i);
		}
		public List<TerminalNode> LBRACK2() { return getTokens(PascalParser.LBRACK2); }
		public TerminalNode LBRACK2(int i) {
			return getToken(PascalParser.LBRACK2, i);
		}
		public List<TerminalNode> RBRACK2() { return getTokens(PascalParser.RBRACK2); }
		public TerminalNode RBRACK2(int i) {
			return getToken(PascalParser.RBRACK2, i);
		}
		public List<TerminalNode> DOT() { return getTokens(PascalParser.DOT); }
		public TerminalNode DOT(int i) {
			return getToken(PascalParser.DOT, i);
		}
		public List<TerminalNode> POINTER() { return getTokens(PascalParser.POINTER); }
		public TerminalNode POINTER(int i) {
			return getToken(PascalParser.POINTER, i);
		}
		public List<TerminalNode> COMMA() { return getTokens(PascalParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(PascalParser.COMMA, i);
		}
		public VariableContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variable; }
	}

	public final VariableContext variable() throws RecognitionException {
		VariableContext _localctx = new VariableContext(_ctx, getState());
		enterRule(_localctx, 118, RULE_variable);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(637);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case AT:
				{
				setState(634);
				match(AT);
				setState(635);
				((VariableContext)_localctx).identifier = identifier();
				}
				break;
			case IDENT:
				{
				setState(636);
				((VariableContext)_localctx).identifier = identifier();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			VarNode t = new VarNode((((VariableContext)_localctx).identifier!=null?_input.getText(((VariableContext)_localctx).identifier.start,((VariableContext)_localctx).identifier.stop):null));
			setState(670);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LBRACK) | (1L << LBRACK2) | (1L << POINTER) | (1L << DOT))) != 0)) {
				{
				setState(668);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case LBRACK:
					{
					setState(640);
					match(LBRACK);
					setState(641);
					((VariableContext)_localctx).expression = expression();
					t.ids.add(((VariableContext)_localctx).expression.ast);
					setState(649);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==COMMA) {
						{
						{
						setState(643);
						match(COMMA);
						setState(644);
						((VariableContext)_localctx).expression = expression();
						t.ids.add(((VariableContext)_localctx).expression.ast);
						}
						}
						setState(651);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(652);
					match(RBRACK);
					}
					break;
				case LBRACK2:
					{
					setState(654);
					match(LBRACK2);
					setState(655);
					((VariableContext)_localctx).expression = expression();
					setState(660);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==COMMA) {
						{
						{
						setState(656);
						match(COMMA);
						setState(657);
						((VariableContext)_localctx).expression = expression();
						}
						}
						setState(662);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(663);
					match(RBRACK2);
					}
					break;
				case DOT:
					{
					setState(665);
					match(DOT);
					setState(666);
					((VariableContext)_localctx).identifier = identifier();
					}
					break;
				case POINTER:
					{
					setState(667);
					match(POINTER);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				setState(672);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			((VariableContext)_localctx).ast =  t;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ASTNode ast;
		public SimpleExpressionContext simpleExpression;
		public Token EQUAL;
		public Token NOT_EQUAL;
		public Token LT;
		public Token LE;
		public Token GE;
		public Token GT;
		public Token IN;
		public List<SimpleExpressionContext> simpleExpression() {
			return getRuleContexts(SimpleExpressionContext.class);
		}
		public SimpleExpressionContext simpleExpression(int i) {
			return getRuleContext(SimpleExpressionContext.class,i);
		}
		public List<TerminalNode> EQUAL() { return getTokens(PascalParser.EQUAL); }
		public TerminalNode EQUAL(int i) {
			return getToken(PascalParser.EQUAL, i);
		}
		public List<TerminalNode> NOT_EQUAL() { return getTokens(PascalParser.NOT_EQUAL); }
		public TerminalNode NOT_EQUAL(int i) {
			return getToken(PascalParser.NOT_EQUAL, i);
		}
		public List<TerminalNode> LT() { return getTokens(PascalParser.LT); }
		public TerminalNode LT(int i) {
			return getToken(PascalParser.LT, i);
		}
		public List<TerminalNode> LE() { return getTokens(PascalParser.LE); }
		public TerminalNode LE(int i) {
			return getToken(PascalParser.LE, i);
		}
		public List<TerminalNode> GE() { return getTokens(PascalParser.GE); }
		public TerminalNode GE(int i) {
			return getToken(PascalParser.GE, i);
		}
		public List<TerminalNode> GT() { return getTokens(PascalParser.GT); }
		public TerminalNode GT(int i) {
			return getToken(PascalParser.GT, i);
		}
		public List<TerminalNode> IN() { return getTokens(PascalParser.IN); }
		public TerminalNode IN(int i) {
			return getToken(PascalParser.IN, i);
		}
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	}

	public final ExpressionContext expression() throws RecognitionException {
		ExpressionContext _localctx = new ExpressionContext(_ctx, getState());
		enterRule(_localctx, 120, RULE_expression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(675);
			((ExpressionContext)_localctx).simpleExpression = simpleExpression();
			ASTNode t = ((ExpressionContext)_localctx).simpleExpression.ast; String s;
			setState(698);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << IN) | (1L << EQUAL) | (1L << NOT_EQUAL) | (1L << LT) | (1L << LE) | (1L << GE) | (1L << GT))) != 0)) {
				{
				{
				setState(691);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case EQUAL:
					{
					setState(677);
					((ExpressionContext)_localctx).EQUAL = match(EQUAL);
					s = (((ExpressionContext)_localctx).EQUAL!=null?((ExpressionContext)_localctx).EQUAL.getText():null);
					}
					break;
				case NOT_EQUAL:
					{
					setState(679);
					((ExpressionContext)_localctx).NOT_EQUAL = match(NOT_EQUAL);
					s = (((ExpressionContext)_localctx).NOT_EQUAL!=null?((ExpressionContext)_localctx).NOT_EQUAL.getText():null);
					}
					break;
				case LT:
					{
					setState(681);
					((ExpressionContext)_localctx).LT = match(LT);
					s = (((ExpressionContext)_localctx).LT!=null?((ExpressionContext)_localctx).LT.getText():null);
					}
					break;
				case LE:
					{
					setState(683);
					((ExpressionContext)_localctx).LE = match(LE);
					s = (((ExpressionContext)_localctx).LE!=null?((ExpressionContext)_localctx).LE.getText():null);
					}
					break;
				case GE:
					{
					setState(685);
					((ExpressionContext)_localctx).GE = match(GE);
					s = (((ExpressionContext)_localctx).GE!=null?((ExpressionContext)_localctx).GE.getText():null);
					}
					break;
				case GT:
					{
					setState(687);
					((ExpressionContext)_localctx).GT = match(GT);
					s = (((ExpressionContext)_localctx).GT!=null?((ExpressionContext)_localctx).GT.getText():null);
					}
					break;
				case IN:
					{
					setState(689);
					((ExpressionContext)_localctx).IN = match(IN);
					s = (((ExpressionContext)_localctx).IN!=null?((ExpressionContext)_localctx).IN.getText():null);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(693);
				((ExpressionContext)_localctx).simpleExpression = simpleExpression();
				t = new BinOp(t, ((ExpressionContext)_localctx).simpleExpression.ast, s);
				}
				}
				setState(700);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			((ExpressionContext)_localctx).ast =  t;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SimpleExpressionContext extends ParserRuleContext {
		public ASTNode ast;
		public List<TermContext> term() {
			return getRuleContexts(TermContext.class);
		}
		public TermContext term(int i) {
			return getRuleContext(TermContext.class,i);
		}
		public List<TerminalNode> PLUS() { return getTokens(PascalParser.PLUS); }
		public TerminalNode PLUS(int i) {
			return getToken(PascalParser.PLUS, i);
		}
		public List<TerminalNode> MINUS() { return getTokens(PascalParser.MINUS); }
		public TerminalNode MINUS(int i) {
			return getToken(PascalParser.MINUS, i);
		}
		public List<TerminalNode> OR() { return getTokens(PascalParser.OR); }
		public TerminalNode OR(int i) {
			return getToken(PascalParser.OR, i);
		}
		public SimpleExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_simpleExpression; }
	}

	public final SimpleExpressionContext simpleExpression() throws RecognitionException {
		SimpleExpressionContext _localctx = new SimpleExpressionContext(_ctx, getState());
		enterRule(_localctx, 122, RULE_simpleExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(703);
			term();
			setState(708);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << OR) | (1L << PLUS) | (1L << MINUS))) != 0)) {
				{
				{
				setState(704);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << OR) | (1L << PLUS) | (1L << MINUS))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(705);
				term();
				}
				}
				setState(710);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TermContext extends ParserRuleContext {
		public List<SignedFactorContext> signedFactor() {
			return getRuleContexts(SignedFactorContext.class);
		}
		public SignedFactorContext signedFactor(int i) {
			return getRuleContext(SignedFactorContext.class,i);
		}
		public List<TerminalNode> STAR() { return getTokens(PascalParser.STAR); }
		public TerminalNode STAR(int i) {
			return getToken(PascalParser.STAR, i);
		}
		public List<TerminalNode> SLASH() { return getTokens(PascalParser.SLASH); }
		public TerminalNode SLASH(int i) {
			return getToken(PascalParser.SLASH, i);
		}
		public List<TerminalNode> DIV() { return getTokens(PascalParser.DIV); }
		public TerminalNode DIV(int i) {
			return getToken(PascalParser.DIV, i);
		}
		public List<TerminalNode> MOD() { return getTokens(PascalParser.MOD); }
		public TerminalNode MOD(int i) {
			return getToken(PascalParser.MOD, i);
		}
		public List<TerminalNode> AND() { return getTokens(PascalParser.AND); }
		public TerminalNode AND(int i) {
			return getToken(PascalParser.AND, i);
		}
		public TermContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_term; }
	}

	public final TermContext term() throws RecognitionException {
		TermContext _localctx = new TermContext(_ctx, getState());
		enterRule(_localctx, 124, RULE_term);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(711);
			signedFactor();
			setState(716);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << AND) | (1L << DIV) | (1L << MOD) | (1L << STAR) | (1L << SLASH))) != 0)) {
				{
				{
				setState(712);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << AND) | (1L << DIV) | (1L << MOD) | (1L << STAR) | (1L << SLASH))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(713);
				signedFactor();
				}
				}
				setState(718);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SignedFactorContext extends ParserRuleContext {
		public FactorContext factor() {
			return getRuleContext(FactorContext.class,0);
		}
		public TerminalNode PLUS() { return getToken(PascalParser.PLUS, 0); }
		public TerminalNode MINUS() { return getToken(PascalParser.MINUS, 0); }
		public SignedFactorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_signedFactor; }
	}

	public final SignedFactorContext signedFactor() throws RecognitionException {
		SignedFactorContext _localctx = new SignedFactorContext(_ctx, getState());
		enterRule(_localctx, 126, RULE_signedFactor);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(720);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PLUS || _la==MINUS) {
				{
				setState(719);
				_la = _input.LA(1);
				if ( !(_la==PLUS || _la==MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
			}

			setState(722);
			factor();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FactorContext extends ParserRuleContext {
		public VariableContext variable() {
			return getRuleContext(VariableContext.class,0);
		}
		public TerminalNode LPAREN() { return getToken(PascalParser.LPAREN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PascalParser.RPAREN, 0); }
		public FunctionDesignatorContext functionDesignator() {
			return getRuleContext(FunctionDesignatorContext.class,0);
		}
		public UnsignedConstantContext unsignedConstant() {
			return getRuleContext(UnsignedConstantContext.class,0);
		}
		public SetContext set() {
			return getRuleContext(SetContext.class,0);
		}
		public TerminalNode NOT() { return getToken(PascalParser.NOT, 0); }
		public FactorContext factor() {
			return getRuleContext(FactorContext.class,0);
		}
		public FactorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor; }
	}

	public final FactorContext factor() throws RecognitionException {
		FactorContext _localctx = new FactorContext(_ctx, getState());
		enterRule(_localctx, 128, RULE_factor);
		try {
			setState(734);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,48,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(724);
				variable();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(725);
				match(LPAREN);
				setState(726);
				expression();
				setState(727);
				match(RPAREN);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(729);
				functionDesignator();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(730);
				unsignedConstant();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(731);
				set();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(732);
				match(NOT);
				setState(733);
				factor();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UnsignedConstantContext extends ParserRuleContext {
		public UnsignedNumberContext unsignedNumber() {
			return getRuleContext(UnsignedNumberContext.class,0);
		}
		public ConstantChrContext constantChr() {
			return getRuleContext(ConstantChrContext.class,0);
		}
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public TerminalNode NIL() { return getToken(PascalParser.NIL, 0); }
		public UnsignedConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unsignedConstant; }
	}

	public final UnsignedConstantContext unsignedConstant() throws RecognitionException {
		UnsignedConstantContext _localctx = new UnsignedConstantContext(_ctx, getState());
		enterRule(_localctx, 130, RULE_unsignedConstant);
		try {
			setState(740);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case NUM_INT:
				enterOuterAlt(_localctx, 1);
				{
				setState(736);
				unsignedNumber();
				}
				break;
			case CHR:
				enterOuterAlt(_localctx, 2);
				{
				setState(737);
				constantChr();
				}
				break;
			case STRING_LITERAL:
				enterOuterAlt(_localctx, 3);
				{
				setState(738);
				string();
				}
				break;
			case NIL:
				enterOuterAlt(_localctx, 4);
				{
				setState(739);
				match(NIL);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionDesignatorContext extends ParserRuleContext {
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode LPAREN() { return getToken(PascalParser.LPAREN, 0); }
		public ParameterListContext parameterList() {
			return getRuleContext(ParameterListContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PascalParser.RPAREN, 0); }
		public FunctionDesignatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDesignator; }
	}

	public final FunctionDesignatorContext functionDesignator() throws RecognitionException {
		FunctionDesignatorContext _localctx = new FunctionDesignatorContext(_ctx, getState());
		enterRule(_localctx, 132, RULE_functionDesignator);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(742);
			identifier();
			setState(743);
			match(LPAREN);
			setState(744);
			parameterList();
			setState(745);
			match(RPAREN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ParameterListContext extends ParserRuleContext {
		public List<ActualParameterContext> actualParameter() {
			return getRuleContexts(ActualParameterContext.class);
		}
		public ActualParameterContext actualParameter(int i) {
			return getRuleContext(ActualParameterContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(PascalParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(PascalParser.COMMA, i);
		}
		public ParameterListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameterList; }
	}

	public final ParameterListContext parameterList() throws RecognitionException {
		ParameterListContext _localctx = new ParameterListContext(_ctx, getState());
		enterRule(_localctx, 134, RULE_parameterList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(747);
			actualParameter();
			setState(752);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(748);
				match(COMMA);
				setState(749);
				actualParameter();
				}
				}
				setState(754);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SetContext extends ParserRuleContext {
		public TerminalNode LBRACK() { return getToken(PascalParser.LBRACK, 0); }
		public ElementListContext elementList() {
			return getRuleContext(ElementListContext.class,0);
		}
		public TerminalNode RBRACK() { return getToken(PascalParser.RBRACK, 0); }
		public TerminalNode LBRACK2() { return getToken(PascalParser.LBRACK2, 0); }
		public TerminalNode RBRACK2() { return getToken(PascalParser.RBRACK2, 0); }
		public SetContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_set; }
	}

	public final SetContext set() throws RecognitionException {
		SetContext _localctx = new SetContext(_ctx, getState());
		enterRule(_localctx, 136, RULE_set);
		try {
			setState(763);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LBRACK:
				enterOuterAlt(_localctx, 1);
				{
				setState(755);
				match(LBRACK);
				setState(756);
				elementList();
				setState(757);
				match(RBRACK);
				}
				break;
			case LBRACK2:
				enterOuterAlt(_localctx, 2);
				{
				setState(759);
				match(LBRACK2);
				setState(760);
				elementList();
				setState(761);
				match(RBRACK2);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ElementListContext extends ParserRuleContext {
		public List<ElementContext> element() {
			return getRuleContexts(ElementContext.class);
		}
		public ElementContext element(int i) {
			return getRuleContext(ElementContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(PascalParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(PascalParser.COMMA, i);
		}
		public ElementListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_elementList; }
	}

	public final ElementListContext elementList() throws RecognitionException {
		ElementListContext _localctx = new ElementListContext(_ctx, getState());
		enterRule(_localctx, 138, RULE_elementList);
		int _la;
		try {
			setState(774);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case CHR:
			case NIL:
			case NOT:
			case PLUS:
			case MINUS:
			case LPAREN:
			case LBRACK:
			case LBRACK2:
			case AT:
			case IDENT:
			case STRING_LITERAL:
			case NUM_INT:
				enterOuterAlt(_localctx, 1);
				{
				setState(765);
				element();
				setState(770);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(766);
					match(COMMA);
					setState(767);
					element();
					}
					}
					setState(772);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			case RBRACK:
			case RBRACK2:
				enterOuterAlt(_localctx, 2);
				{
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ElementContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode DOTDOT() { return getToken(PascalParser.DOTDOT, 0); }
		public ElementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_element; }
	}

	public final ElementContext element() throws RecognitionException {
		ElementContext _localctx = new ElementContext(_ctx, getState());
		enterRule(_localctx, 140, RULE_element);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(776);
			expression();
			setState(779);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==DOTDOT) {
				{
				setState(777);
				match(DOTDOT);
				setState(778);
				expression();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProcedureStatementContext extends ParserRuleContext {
		public ASTNode ast;
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode LPAREN() { return getToken(PascalParser.LPAREN, 0); }
		public ParameterListContext parameterList() {
			return getRuleContext(ParameterListContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PascalParser.RPAREN, 0); }
		public ProcedureStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_procedureStatement; }
	}

	public final ProcedureStatementContext procedureStatement() throws RecognitionException {
		ProcedureStatementContext _localctx = new ProcedureStatementContext(_ctx, getState());
		enterRule(_localctx, 142, RULE_procedureStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(781);
			identifier();
			setState(786);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LPAREN) {
				{
				setState(782);
				match(LPAREN);
				setState(783);
				parameterList();
				setState(784);
				match(RPAREN);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ActualParameterContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ActualParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_actualParameter; }
	}

	public final ActualParameterContext actualParameter() throws RecognitionException {
		ActualParameterContext _localctx = new ActualParameterContext(_ctx, getState());
		enterRule(_localctx, 144, RULE_actualParameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(788);
			expression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class GotoStatementContext extends ParserRuleContext {
		public TerminalNode GOTO() { return getToken(PascalParser.GOTO, 0); }
		public LabelContext label() {
			return getRuleContext(LabelContext.class,0);
		}
		public GotoStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_gotoStatement; }
	}

	public final GotoStatementContext gotoStatement() throws RecognitionException {
		GotoStatementContext _localctx = new GotoStatementContext(_ctx, getState());
		enterRule(_localctx, 146, RULE_gotoStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(790);
			match(GOTO);
			setState(791);
			label();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class EmptyStatementContext extends ParserRuleContext {
		public EmptyStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_emptyStatement; }
	}

	public final EmptyStatementContext emptyStatement() throws RecognitionException {
		EmptyStatementContext _localctx = new EmptyStatementContext(_ctx, getState());
		enterRule(_localctx, 148, RULE_emptyStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class EmptyContext extends ParserRuleContext {
		public EmptyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_empty; }
	}

	public final EmptyContext empty() throws RecognitionException {
		EmptyContext _localctx = new EmptyContext(_ctx, getState());
		enterRule(_localctx, 150, RULE_empty);
		try {
			enterOuterAlt(_localctx, 1);
			{
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StructuredStatementContext extends ParserRuleContext {
		public ASTNode ast;
		public CompoundStatementContext compoundStatement() {
			return getRuleContext(CompoundStatementContext.class,0);
		}
		public ConditionalStatementContext conditionalStatement() {
			return getRuleContext(ConditionalStatementContext.class,0);
		}
		public RepetetiveStatementContext repetetiveStatement() {
			return getRuleContext(RepetetiveStatementContext.class,0);
		}
		public WithStatementContext withStatement() {
			return getRuleContext(WithStatementContext.class,0);
		}
		public StructuredStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structuredStatement; }
	}

	public final StructuredStatementContext structuredStatement() throws RecognitionException {
		StructuredStatementContext _localctx = new StructuredStatementContext(_ctx, getState());
		enterRule(_localctx, 152, RULE_structuredStatement);
		try {
			setState(801);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case BEGIN:
				enterOuterAlt(_localctx, 1);
				{
				setState(797);
				compoundStatement();
				}
				break;
			case CASE:
			case IF:
				enterOuterAlt(_localctx, 2);
				{
				setState(798);
				conditionalStatement();
				}
				break;
			case FOR:
			case REPEAT:
			case WHILE:
				enterOuterAlt(_localctx, 3);
				{
				setState(799);
				repetetiveStatement();
				}
				break;
			case WITH:
				enterOuterAlt(_localctx, 4);
				{
				setState(800);
				withStatement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CompoundStatementContext extends ParserRuleContext {
		public ASTNode ast;
		public StatementsContext statements;
		public TerminalNode BEGIN() { return getToken(PascalParser.BEGIN, 0); }
		public StatementsContext statements() {
			return getRuleContext(StatementsContext.class,0);
		}
		public TerminalNode END() { return getToken(PascalParser.END, 0); }
		public CompoundStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_compoundStatement; }
	}

	public final CompoundStatementContext compoundStatement() throws RecognitionException {
		CompoundStatementContext _localctx = new CompoundStatementContext(_ctx, getState());
		enterRule(_localctx, 154, RULE_compoundStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(803);
			match(BEGIN);
			setState(804);
			((CompoundStatementContext)_localctx).statements = statements();
			setState(805);
			match(END);
			((CompoundStatementContext)_localctx).ast =  new StringNode(new CompoundNode(((CompoundStatementContext)_localctx).statements.astList));
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementsContext extends ParserRuleContext {
		public List<ASTNode> astList = new ArrayList<>();
		public StatementContext statement;
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public List<TerminalNode> SEMI() { return getTokens(PascalParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(PascalParser.SEMI, i);
		}
		public StatementsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statements; }
	}

	public final StatementsContext statements() throws RecognitionException {
		StatementsContext _localctx = new StatementsContext(_ctx, getState());
		enterRule(_localctx, 156, RULE_statements);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(808);
			((StatementsContext)_localctx).statement = statement();
			_localctx.astList.add(new StringNode(((StatementsContext)_localctx).statement.ast));
			setState(816);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SEMI) {
				{
				{
				setState(810);
				match(SEMI);
				setState(811);
				((StatementsContext)_localctx).statement = statement();
				_localctx.astList.add(new StringNode(((StatementsContext)_localctx).statement.ast));
				}
				}
				setState(818);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConditionalStatementContext extends ParserRuleContext {
		public IfStatementContext ifStatement() {
			return getRuleContext(IfStatementContext.class,0);
		}
		public CaseStatementContext caseStatement() {
			return getRuleContext(CaseStatementContext.class,0);
		}
		public ConditionalStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_conditionalStatement; }
	}

	public final ConditionalStatementContext conditionalStatement() throws RecognitionException {
		ConditionalStatementContext _localctx = new ConditionalStatementContext(_ctx, getState());
		enterRule(_localctx, 158, RULE_conditionalStatement);
		try {
			setState(821);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IF:
				enterOuterAlt(_localctx, 1);
				{
				setState(819);
				ifStatement();
				}
				break;
			case CASE:
				enterOuterAlt(_localctx, 2);
				{
				setState(820);
				caseStatement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IfStatementContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(PascalParser.IF, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode THEN() { return getToken(PascalParser.THEN, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public TerminalNode ELSE() { return getToken(PascalParser.ELSE, 0); }
		public IfStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifStatement; }
	}

	public final IfStatementContext ifStatement() throws RecognitionException {
		IfStatementContext _localctx = new IfStatementContext(_ctx, getState());
		enterRule(_localctx, 160, RULE_ifStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(823);
			match(IF);
			setState(824);
			expression();
			setState(825);
			match(THEN);
			setState(826);
			statement();
			setState(829);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,59,_ctx) ) {
			case 1:
				{
				setState(827);
				match(ELSE);
				setState(828);
				statement();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CaseStatementContext extends ParserRuleContext {
		public TerminalNode CASE() { return getToken(PascalParser.CASE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode OF() { return getToken(PascalParser.OF, 0); }
		public List<CaseListElementContext> caseListElement() {
			return getRuleContexts(CaseListElementContext.class);
		}
		public CaseListElementContext caseListElement(int i) {
			return getRuleContext(CaseListElementContext.class,i);
		}
		public TerminalNode END() { return getToken(PascalParser.END, 0); }
		public List<TerminalNode> SEMI() { return getTokens(PascalParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(PascalParser.SEMI, i);
		}
		public TerminalNode ELSE() { return getToken(PascalParser.ELSE, 0); }
		public StatementsContext statements() {
			return getRuleContext(StatementsContext.class,0);
		}
		public CaseStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_caseStatement; }
	}

	public final CaseStatementContext caseStatement() throws RecognitionException {
		CaseStatementContext _localctx = new CaseStatementContext(_ctx, getState());
		enterRule(_localctx, 162, RULE_caseStatement);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(831);
			match(CASE);
			setState(832);
			expression();
			setState(833);
			match(OF);
			setState(834);
			caseListElement();
			setState(839);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,60,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(835);
					match(SEMI);
					setState(836);
					caseListElement();
					}
					} 
				}
				setState(841);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,60,_ctx);
			}
			setState(845);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==SEMI) {
				{
				setState(842);
				match(SEMI);
				setState(843);
				match(ELSE);
				setState(844);
				statements();
				}
			}

			setState(847);
			match(END);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CaseListElementContext extends ParserRuleContext {
		public ConstListContext constList() {
			return getRuleContext(ConstListContext.class,0);
		}
		public TerminalNode COLON() { return getToken(PascalParser.COLON, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public CaseListElementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_caseListElement; }
	}

	public final CaseListElementContext caseListElement() throws RecognitionException {
		CaseListElementContext _localctx = new CaseListElementContext(_ctx, getState());
		enterRule(_localctx, 164, RULE_caseListElement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(849);
			constList();
			setState(850);
			match(COLON);
			setState(851);
			statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class RepetetiveStatementContext extends ParserRuleContext {
		public WhileStatementContext whileStatement() {
			return getRuleContext(WhileStatementContext.class,0);
		}
		public RepeatStatementContext repeatStatement() {
			return getRuleContext(RepeatStatementContext.class,0);
		}
		public ForStatementContext forStatement() {
			return getRuleContext(ForStatementContext.class,0);
		}
		public RepetetiveStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_repetetiveStatement; }
	}

	public final RepetetiveStatementContext repetetiveStatement() throws RecognitionException {
		RepetetiveStatementContext _localctx = new RepetetiveStatementContext(_ctx, getState());
		enterRule(_localctx, 166, RULE_repetetiveStatement);
		try {
			setState(856);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case WHILE:
				enterOuterAlt(_localctx, 1);
				{
				setState(853);
				whileStatement();
				}
				break;
			case REPEAT:
				enterOuterAlt(_localctx, 2);
				{
				setState(854);
				repeatStatement();
				}
				break;
			case FOR:
				enterOuterAlt(_localctx, 3);
				{
				setState(855);
				forStatement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WhileStatementContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(PascalParser.WHILE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode DO() { return getToken(PascalParser.DO, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public WhileStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileStatement; }
	}

	public final WhileStatementContext whileStatement() throws RecognitionException {
		WhileStatementContext _localctx = new WhileStatementContext(_ctx, getState());
		enterRule(_localctx, 168, RULE_whileStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(858);
			match(WHILE);
			setState(859);
			expression();
			setState(860);
			match(DO);
			setState(861);
			statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class RepeatStatementContext extends ParserRuleContext {
		public TerminalNode REPEAT() { return getToken(PascalParser.REPEAT, 0); }
		public StatementsContext statements() {
			return getRuleContext(StatementsContext.class,0);
		}
		public TerminalNode UNTIL() { return getToken(PascalParser.UNTIL, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public RepeatStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_repeatStatement; }
	}

	public final RepeatStatementContext repeatStatement() throws RecognitionException {
		RepeatStatementContext _localctx = new RepeatStatementContext(_ctx, getState());
		enterRule(_localctx, 170, RULE_repeatStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(863);
			match(REPEAT);
			setState(864);
			statements();
			setState(865);
			match(UNTIL);
			setState(866);
			expression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForStatementContext extends ParserRuleContext {
		public TerminalNode FOR() { return getToken(PascalParser.FOR, 0); }
		public IdentifierContext identifier() {
			return getRuleContext(IdentifierContext.class,0);
		}
		public TerminalNode ASSIGN() { return getToken(PascalParser.ASSIGN, 0); }
		public ForListContext forList() {
			return getRuleContext(ForListContext.class,0);
		}
		public TerminalNode DO() { return getToken(PascalParser.DO, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public ForStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forStatement; }
	}

	public final ForStatementContext forStatement() throws RecognitionException {
		ForStatementContext _localctx = new ForStatementContext(_ctx, getState());
		enterRule(_localctx, 172, RULE_forStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(868);
			match(FOR);
			setState(869);
			identifier();
			setState(870);
			match(ASSIGN);
			setState(871);
			forList();
			setState(872);
			match(DO);
			setState(873);
			statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForListContext extends ParserRuleContext {
		public InitialValueContext initialValue() {
			return getRuleContext(InitialValueContext.class,0);
		}
		public FinalValueContext finalValue() {
			return getRuleContext(FinalValueContext.class,0);
		}
		public TerminalNode TO() { return getToken(PascalParser.TO, 0); }
		public TerminalNode DOWNTO() { return getToken(PascalParser.DOWNTO, 0); }
		public ForListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forList; }
	}

	public final ForListContext forList() throws RecognitionException {
		ForListContext _localctx = new ForListContext(_ctx, getState());
		enterRule(_localctx, 174, RULE_forList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(875);
			initialValue();
			setState(876);
			_la = _input.LA(1);
			if ( !(_la==DOWNTO || _la==TO) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(877);
			finalValue();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class InitialValueContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public InitialValueContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_initialValue; }
	}

	public final InitialValueContext initialValue() throws RecognitionException {
		InitialValueContext _localctx = new InitialValueContext(_ctx, getState());
		enterRule(_localctx, 176, RULE_initialValue);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(879);
			expression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FinalValueContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public FinalValueContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_finalValue; }
	}

	public final FinalValueContext finalValue() throws RecognitionException {
		FinalValueContext _localctx = new FinalValueContext(_ctx, getState());
		enterRule(_localctx, 178, RULE_finalValue);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(881);
			expression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WithStatementContext extends ParserRuleContext {
		public TerminalNode WITH() { return getToken(PascalParser.WITH, 0); }
		public RecordVariableListContext recordVariableList() {
			return getRuleContext(RecordVariableListContext.class,0);
		}
		public TerminalNode DO() { return getToken(PascalParser.DO, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public WithStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_withStatement; }
	}

	public final WithStatementContext withStatement() throws RecognitionException {
		WithStatementContext _localctx = new WithStatementContext(_ctx, getState());
		enterRule(_localctx, 180, RULE_withStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(883);
			match(WITH);
			setState(884);
			recordVariableList();
			setState(885);
			match(DO);
			setState(886);
			statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class RecordVariableListContext extends ParserRuleContext {
		public List<VariableContext> variable() {
			return getRuleContexts(VariableContext.class);
		}
		public VariableContext variable(int i) {
			return getRuleContext(VariableContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(PascalParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(PascalParser.COMMA, i);
		}
		public RecordVariableListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_recordVariableList; }
	}

	public final RecordVariableListContext recordVariableList() throws RecognitionException {
		RecordVariableListContext _localctx = new RecordVariableListContext(_ctx, getState());
		enterRule(_localctx, 182, RULE_recordVariableList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(888);
			variable();
			setState(893);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(889);
				match(COMMA);
				setState(890);
				variable();
				}
				}
				setState(895);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3O\u0383\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4I"+
		"\tI\4J\tJ\4K\tK\4L\tL\4M\tM\4N\tN\4O\tO\4P\tP\4Q\tQ\4R\tR\4S\tS\4T\tT"+
		"\4U\tU\4V\tV\4W\tW\4X\tX\4Y\tY\4Z\tZ\4[\t[\4\\\t\\\4]\t]\3\2\3\2\5\2\u00bd"+
		"\n\2\3\2\3\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3\5\3\u00c9\n\3\3\3\3\3\3\3"+
		"\3\3\3\3\3\3\3\3\3\3\5\3\u00d3\n\3\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\5\3\5"+
		"\3\5\3\5\3\5\3\5\3\5\3\5\7\5\u00e4\n\5\f\5\16\5\u00e7\13\5\3\5\3\5\3\5"+
		"\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\7\7\u00f4\n\7\f\7\16\7\u00f7\13\7\3\7"+
		"\3\7\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\t\3\t\7\t\u0104\n\t\f\t\16\t\u0107"+
		"\13\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\13\3\13\3\13\3\13\3\13\3\f\3\f"+
		"\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\5\f\u0128"+
		"\n\f\3\r\3\r\5\r\u012c\n\r\3\16\3\16\3\17\3\17\3\20\3\20\3\21\3\21\3\22"+
		"\3\22\3\22\3\22\6\22\u013a\n\22\r\22\16\22\u013b\3\23\3\23\3\23\3\23\3"+
		"\23\5\23\u0143\n\23\3\24\3\24\5\24\u0147\n\24\3\24\3\24\3\24\3\25\3\25"+
		"\5\25\u014e\n\25\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\5\26\u0159"+
		"\n\26\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\5\27\u0165\n\27"+
		"\3\30\3\30\3\30\3\30\3\31\3\31\3\31\3\31\3\31\3\31\3\32\3\32\5\32\u0173"+
		"\n\32\3\33\3\33\3\33\3\33\3\33\5\33\u017a\n\33\3\34\3\34\3\34\3\34\3\34"+
		"\3\34\5\34\u0182\n\34\3\35\3\35\3\35\3\35\5\35\u0188\n\35\3\35\3\35\3"+
		"\36\3\36\3\36\3\36\3\36\3\36\3\36\3\36\3\36\3\36\3\36\3\36\3\36\3\36\3"+
		"\36\5\36\u019b\n\36\3\37\3\37\3\37\3\37\3\37\3\37\7\37\u01a3\n\37\f\37"+
		"\16\37\u01a6\13\37\3 \3 \3 \3!\3!\3!\3\"\3\"\3\"\3\"\3#\3#\3#\5#\u01b5"+
		"\n#\3#\5#\u01b8\n#\3$\3$\3$\7$\u01bd\n$\f$\16$\u01c0\13$\3%\3%\3%\3%\3"+
		"&\3&\3&\3&\3&\3&\7&\u01cc\n&\f&\16&\u01cf\13&\3\'\3\'\3\'\3\'\3\'\5\'"+
		"\u01d6\n\'\3(\3(\3(\3(\3(\3(\3)\3)\3)\3)\3*\3*\3+\3+\3+\3+\5+\u01e8\n"+
		"+\3,\3,\3,\3-\3-\3-\3-\3-\3-\3-\7-\u01f4\n-\f-\16-\u01f7\13-\3-\3-\3-"+
		"\3.\3.\3.\3.\3.\3/\3/\3/\3/\3\60\3\60\3\60\3\60\3\60\3\60\5\60\u020b\n"+
		"\60\3\61\3\61\3\61\3\61\3\61\5\61\u0212\n\61\3\61\3\61\3\61\3\61\3\62"+
		"\3\62\3\62\3\62\3\62\3\62\3\62\7\62\u021f\n\62\f\62\16\62\u0222\13\62"+
		"\3\62\3\62\3\62\3\63\3\63\3\63\3\63\3\63\3\63\3\63\3\63\3\63\3\63\3\63"+
		"\5\63\u0232\n\63\3\64\3\64\3\64\3\64\3\64\3\65\3\65\3\65\3\65\3\65\3\65"+
		"\7\65\u023f\n\65\f\65\16\65\u0242\13\65\3\66\3\66\3\66\7\66\u0247\n\66"+
		"\f\66\16\66\u024a\13\66\3\67\3\67\3\67\3\67\3\67\5\67\u0251\n\67\3\67"+
		"\3\67\3\67\3\67\3\67\3\67\38\38\39\39\39\39\39\39\39\59\u0262\n9\3:\3"+
		":\3:\3:\3:\3:\5:\u026a\n:\3;\3;\3;\3;\3;\3;\3;\3;\3;\3;\5;\u0276\n;\3"+
		"<\3<\3<\3<\3<\3=\3=\3=\5=\u0280\n=\3=\3=\3=\3=\3=\3=\3=\3=\7=\u028a\n"+
		"=\f=\16=\u028d\13=\3=\3=\3=\3=\3=\3=\7=\u0295\n=\f=\16=\u0298\13=\3=\3"+
		"=\3=\3=\3=\7=\u029f\n=\f=\16=\u02a2\13=\3=\3=\3>\3>\3>\3>\3>\3>\3>\3>"+
		"\3>\3>\3>\3>\3>\3>\3>\3>\5>\u02b6\n>\3>\3>\3>\7>\u02bb\n>\f>\16>\u02be"+
		"\13>\3>\3>\3?\3?\3?\7?\u02c5\n?\f?\16?\u02c8\13?\3@\3@\3@\7@\u02cd\n@"+
		"\f@\16@\u02d0\13@\3A\5A\u02d3\nA\3A\3A\3B\3B\3B\3B\3B\3B\3B\3B\3B\3B\5"+
		"B\u02e1\nB\3C\3C\3C\3C\5C\u02e7\nC\3D\3D\3D\3D\3D\3E\3E\3E\7E\u02f1\n"+
		"E\fE\16E\u02f4\13E\3F\3F\3F\3F\3F\3F\3F\3F\5F\u02fe\nF\3G\3G\3G\7G\u0303"+
		"\nG\fG\16G\u0306\13G\3G\5G\u0309\nG\3H\3H\3H\5H\u030e\nH\3I\3I\3I\3I\3"+
		"I\5I\u0315\nI\3J\3J\3K\3K\3K\3L\3L\3M\3M\3N\3N\3N\3N\5N\u0324\nN\3O\3"+
		"O\3O\3O\3O\3P\3P\3P\3P\3P\3P\7P\u0331\nP\fP\16P\u0334\13P\3Q\3Q\5Q\u0338"+
		"\nQ\3R\3R\3R\3R\3R\3R\5R\u0340\nR\3S\3S\3S\3S\3S\3S\7S\u0348\nS\fS\16"+
		"S\u034b\13S\3S\3S\3S\5S\u0350\nS\3S\3S\3T\3T\3T\3T\3U\3U\3U\5U\u035b\n"+
		"U\3V\3V\3V\3V\3V\3W\3W\3W\3W\3W\3X\3X\3X\3X\3X\3X\3X\3Y\3Y\3Y\3Y\3Z\3"+
		"Z\3[\3[\3\\\3\\\3\\\3\\\3\\\3]\3]\3]\7]\u037e\n]\f]\16]\u0381\13]\3]\2"+
		"\2^\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$&(*,.\60\62\64\668:<>@B"+
		"DFHJLNPRTVXZ\\^`bdfhjlnprtvxz|~\u0080\u0082\u0084\u0086\u0088\u008a\u008c"+
		"\u008e\u0090\u0092\u0094\u0096\u0098\u009a\u009c\u009e\u00a0\u00a2\u00a4"+
		"\u00a6\u00a8\u00aa\u00ac\u00ae\u00b0\u00b2\u00b4\u00b6\u00b8\2\7\3\2+"+
		",\7\2\6\6\b\b\26\26  HH\4\2\34\34+,\6\2\3\3\13\13\30\30-.\4\2\r\r%%\2"+
		"\u0389\2\u00ba\3\2\2\2\4\u00d2\3\2\2\2\6\u00d4\3\2\2\2\b\u00e5\3\2\2\2"+
		"\n\u00eb\3\2\2\2\f\u00ef\3\2\2\2\16\u00fa\3\2\2\2\20\u00fc\3\2\2\2\22"+
		"\u010b\3\2\2\2\24\u0110\3\2\2\2\26\u0127\3\2\2\2\30\u012b\3\2\2\2\32\u012d"+
		"\3\2\2\2\34\u012f\3\2\2\2\36\u0131\3\2\2\2 \u0133\3\2\2\2\"\u0135\3\2"+
		"\2\2$\u013d\3\2\2\2&\u0144\3\2\2\2(\u014b\3\2\2\2*\u0158\3\2\2\2,\u0164"+
		"\3\2\2\2.\u0166\3\2\2\2\60\u016a\3\2\2\2\62\u0172\3\2\2\2\64\u0179\3\2"+
		"\2\2\66\u0181\3\2\2\28\u0183\3\2\2\2:\u019a\3\2\2\2<\u019c\3\2\2\2>\u01a7"+
		"\3\2\2\2@\u01aa\3\2\2\2B\u01ad\3\2\2\2D\u01b7\3\2\2\2F\u01b9\3\2\2\2H"+
		"\u01c1\3\2\2\2J\u01c5\3\2\2\2L\u01d5\3\2\2\2N\u01d7\3\2\2\2P\u01dd\3\2"+
		"\2\2R\u01e1\3\2\2\2T\u01e7\3\2\2\2V\u01e9\3\2\2\2X\u01ec\3\2\2\2Z\u01fb"+
		"\3\2\2\2\\\u0200\3\2\2\2^\u020a\3\2\2\2`\u020c\3\2\2\2b\u0217\3\2\2\2"+
		"d\u0231\3\2\2\2f\u0233\3\2\2\2h\u0238\3\2\2\2j\u0243\3\2\2\2l\u024b\3"+
		"\2\2\2n\u0258\3\2\2\2p\u0261\3\2\2\2r\u0269\3\2\2\2t\u0275\3\2\2\2v\u0277"+
		"\3\2\2\2x\u027f\3\2\2\2z\u02a5\3\2\2\2|\u02c1\3\2\2\2~\u02c9\3\2\2\2\u0080"+
		"\u02d2\3\2\2\2\u0082\u02e0\3\2\2\2\u0084\u02e6\3\2\2\2\u0086\u02e8\3\2"+
		"\2\2\u0088\u02ed\3\2\2\2\u008a\u02fd\3\2\2\2\u008c\u0308\3\2\2\2\u008e"+
		"\u030a\3\2\2\2\u0090\u030f\3\2\2\2\u0092\u0316\3\2\2\2\u0094\u0318\3\2"+
		"\2\2\u0096\u031b\3\2\2\2\u0098\u031d\3\2\2\2\u009a\u0323\3\2\2\2\u009c"+
		"\u0325\3\2\2\2\u009e\u032a\3\2\2\2\u00a0\u0337\3\2\2\2\u00a2\u0339\3\2"+
		"\2\2\u00a4\u0341\3\2\2\2\u00a6\u0353\3\2\2\2\u00a8\u035a\3\2\2\2\u00aa"+
		"\u035c\3\2\2\2\u00ac\u0361\3\2\2\2\u00ae\u0366\3\2\2\2\u00b0\u036d\3\2"+
		"\2\2\u00b2\u0371\3\2\2\2\u00b4\u0373\3\2\2\2\u00b6\u0375\3\2\2\2\u00b8"+
		"\u037a\3\2\2\2\u00ba\u00bc\5\4\3\2\u00bb\u00bd\7F\2\2\u00bc\u00bb\3\2"+
		"\2\2\u00bc\u00bd\3\2\2\2\u00bd\u00be\3\2\2\2\u00be\u00bf\5\b\5\2\u00bf"+
		"\u00c0\7A\2\2\u00c0\u00c1\b\2\1\2\u00c1\3\3\2\2\2\u00c2\u00c3\7\37\2\2"+
		"\u00c3\u00c8\5\6\4\2\u00c4\u00c5\79\2\2\u00c5\u00c6\5h\65\2\u00c6\u00c7"+
		"\7:\2\2\u00c7\u00c9\3\2\2\2\u00c8\u00c4\3\2\2\2\u00c8\u00c9\3\2\2\2\u00c9"+
		"\u00ca\3\2\2\2\u00ca\u00cb\7\61\2\2\u00cb\u00cc\b\3\1\2\u00cc\u00d3\3"+
		"\2\2\2\u00cd\u00ce\7E\2\2\u00ce\u00cf\5\6\4\2\u00cf\u00d0\7\61\2\2\u00d0"+
		"\u00d1\b\3\1\2\u00d1\u00d3\3\2\2\2\u00d2\u00c2\3\2\2\2\u00d2\u00cd\3\2"+
		"\2\2\u00d3\5\3\2\2\2\u00d4\u00d5\7M\2\2\u00d5\7\3\2\2\2\u00d6\u00e4\5"+
		"\f\7\2\u00d7\u00d8\5\20\t\2\u00d8\u00d9\b\5\1\2\u00d9\u00e4\3\2\2\2\u00da"+
		"\u00e4\5\"\22\2\u00db\u00dc\5X-\2\u00dc\u00dd\b\5\1\2\u00dd\u00e4\3\2"+
		"\2\2\u00de\u00df\5\\/\2\u00df\u00e0\b\5\1\2\u00e0\u00e4\3\2\2\2\u00e1"+
		"\u00e4\5\n\6\2\u00e2\u00e4\7I\2\2\u00e3\u00d6\3\2\2\2\u00e3\u00d7\3\2"+
		"\2\2\u00e3\u00da\3\2\2\2\u00e3\u00db\3\2\2\2\u00e3\u00de\3\2\2\2\u00e3"+
		"\u00e1\3\2\2\2\u00e3\u00e2\3\2\2\2\u00e4\u00e7\3\2\2\2\u00e5\u00e3\3\2"+
		"\2\2\u00e5\u00e6\3\2\2\2\u00e6\u00e8\3\2\2\2\u00e7\u00e5\3\2\2\2\u00e8"+
		"\u00e9\5\u009cO\2\u00e9\u00ea\b\5\1\2\u00ea\t\3\2\2\2\u00eb\u00ec\7G\2"+
		"\2\u00ec\u00ed\5h\65\2\u00ed\u00ee\7\61\2\2\u00ee\13\3\2\2\2\u00ef\u00f0"+
		"\7\27\2\2\u00f0\u00f5\5\16\b\2\u00f1\u00f2\7\60\2\2\u00f2\u00f4\5\16\b"+
		"\2\u00f3\u00f1\3\2\2\2\u00f4\u00f7\3\2\2\2\u00f5\u00f3\3\2\2\2\u00f5\u00f6"+
		"\3\2\2\2\u00f6\u00f8\3\2\2\2\u00f7\u00f5\3\2\2\2\u00f8\u00f9\7\61\2\2"+
		"\u00f9\r\3\2\2\2\u00fa\u00fb\5\32\16\2\u00fb\17\3\2\2\2\u00fc\u00fd\7"+
		"\n\2\2\u00fd\u00fe\5\22\n\2\u00fe\u0105\b\t\1\2\u00ff\u0100\7\61\2\2\u0100"+
		"\u0101\5\22\n\2\u0101\u0102\b\t\1\2\u0102\u0104\3\2\2\2\u0103\u00ff\3"+
		"\2\2\2\u0104\u0107\3\2\2\2\u0105\u0103\3\2\2\2\u0105\u0106\3\2\2\2\u0106"+
		"\u0108\3\2\2\2\u0107\u0105\3\2\2\2\u0108\u0109\7\61\2\2\u0109\u010a\b"+
		"\t\1\2\u010a\21\3\2\2\2\u010b\u010c\5\6\4\2\u010c\u010d\7\63\2\2\u010d"+
		"\u010e\5\26\f\2\u010e\u010f\b\n\1\2\u010f\23\3\2\2\2\u0110\u0111\7\t\2"+
		"\2\u0111\u0112\79\2\2\u0112\u0113\5\32\16\2\u0113\u0114\7:\2\2\u0114\25"+
		"\3\2\2\2\u0115\u0116\5\30\r\2\u0116\u0117\b\f\1\2\u0117\u0128\3\2\2\2"+
		"\u0118\u0119\5\36\20\2\u0119\u011a\5\30\r\2\u011a\u011b\b\f\1\2\u011b"+
		"\u0128\3\2\2\2\u011c\u011d\5\6\4\2\u011d\u011e\b\f\1\2\u011e\u0128\3\2"+
		"\2\2\u011f\u0120\5\36\20\2\u0120\u0121\5\6\4\2\u0121\u0122\b\f\1\2\u0122"+
		"\u0128\3\2\2\2\u0123\u0124\5 \21\2\u0124\u0125\b\f\1\2\u0125\u0128\3\2"+
		"\2\2\u0126\u0128\5\24\13\2\u0127\u0115\3\2\2\2\u0127\u0118\3\2\2\2\u0127"+
		"\u011c\3\2\2\2\u0127\u011f\3\2\2\2\u0127\u0123\3\2\2\2\u0127\u0126\3\2"+
		"\2\2\u0128\27\3\2\2\2\u0129\u012c\5\32\16\2\u012a\u012c\5\34\17\2\u012b"+
		"\u0129\3\2\2\2\u012b\u012a\3\2\2\2\u012c\31\3\2\2\2\u012d\u012e\7O\2\2"+
		"\u012e\33\3\2\2\2\u012f\u0130\7O\2\2\u0130\35\3\2\2\2\u0131\u0132\t\2"+
		"\2\2\u0132\37\3\2\2\2\u0133\u0134\7N\2\2\u0134!\3\2\2\2\u0135\u0139\7"+
		"&\2\2\u0136\u0137\5$\23\2\u0137\u0138\7\61\2\2\u0138\u013a\3\2\2\2\u0139"+
		"\u0136\3\2\2\2\u013a\u013b\3\2\2\2\u013b\u0139\3\2\2\2\u013b\u013c\3\2"+
		"\2\2\u013c#\3\2\2\2\u013d\u013e\5\6\4\2\u013e\u0142\7\63\2\2\u013f\u0143"+
		"\5*\26\2\u0140\u0143\5&\24\2\u0141\u0143\5(\25\2\u0142\u013f\3\2\2\2\u0142"+
		"\u0140\3\2\2\2\u0142\u0141\3\2\2\2\u0143%\3\2\2\2\u0144\u0146\7\22\2\2"+
		"\u0145\u0147\5b\62\2\u0146\u0145\3\2\2\2\u0146\u0147\3\2\2\2\u0147\u0148"+
		"\3\2\2\2\u0148\u0149\7\62\2\2\u0149\u014a\5n8\2\u014a\'\3\2\2\2\u014b"+
		"\u014d\7\36\2\2\u014c\u014e\5b\62\2\u014d\u014c\3\2\2\2\u014d\u014e\3"+
		"\2\2\2\u014e)\3\2\2\2\u014f\u0150\5,\27\2\u0150\u0151\b\26\1\2\u0151\u0159"+
		"\3\2\2\2\u0152\u0153\5\64\33\2\u0153\u0154\b\26\1\2\u0154\u0159\3\2\2"+
		"\2\u0155\u0156\5V,\2\u0156\u0157\b\26\1\2\u0157\u0159\3\2\2\2\u0158\u014f"+
		"\3\2\2\2\u0158\u0152\3\2\2\2\u0158\u0155\3\2\2\2\u0159+\3\2\2\2\u015a"+
		"\u0165\5.\30\2\u015b\u015c\5\60\31\2\u015c\u015d\b\27\1\2\u015d\u0165"+
		"\3\2\2\2\u015e\u015f\5\62\32\2\u015f\u0160\b\27\1\2\u0160\u0165\3\2\2"+
		"\2\u0161\u0162\58\35\2\u0162\u0163\b\27\1\2\u0163\u0165\3\2\2\2\u0164"+
		"\u015a\3\2\2\2\u0164\u015b\3\2\2\2\u0164\u015e\3\2\2\2\u0164\u0161\3\2"+
		"\2\2\u0165-\3\2\2\2\u0166\u0167\79\2\2\u0167\u0168\5h\65\2\u0168\u0169"+
		"\7:\2\2\u0169/\3\2\2\2\u016a\u016b\5\26\f\2\u016b\u016c\b\31\1\2\u016c"+
		"\u016d\7B\2\2\u016d\u016e\5\26\f\2\u016e\u016f\b\31\1\2\u016f\61\3\2\2"+
		"\2\u0170\u0173\5\6\4\2\u0171\u0173\t\3\2\2\u0172\u0170\3\2\2\2\u0172\u0171"+
		"\3\2\2\2\u0173\63\3\2\2\2\u0174\u0175\7\35\2\2\u0175\u017a\5\66\34\2\u0176"+
		"\u0177\5\66\34\2\u0177\u0178\b\33\1\2\u0178\u017a\3\2\2\2\u0179\u0174"+
		"\3\2\2\2\u0179\u0176\3\2\2\2\u017a\65\3\2\2\2\u017b\u017c\5:\36\2\u017c"+
		"\u017d\b\34\1\2\u017d\u0182\3\2\2\2\u017e\u0182\5B\"\2\u017f\u0182\5P"+
		")\2\u0180\u0182\5T+\2\u0181\u017b\3\2\2\2\u0181\u017e\3\2\2\2\u0181\u017f"+
		"\3\2\2\2\u0181\u0180\3\2\2\2\u0182\67\3\2\2\2\u0183\u0184\7H\2\2\u0184"+
		"\u0187\7;\2\2\u0185\u0188\5\6\4\2\u0186\u0188\5\30\r\2\u0187\u0185\3\2"+
		"\2\2\u0187\u0186\3\2\2\2\u0188\u0189\3\2\2\2\u0189\u018a\7=\2\2\u018a"+
		"9\3\2\2\2\u018b\u018c\7\4\2\2\u018c\u018d\7;\2\2\u018d\u018e\5<\37\2\u018e"+
		"\u018f\7=\2\2\u018f\u0190\7\33\2\2\u0190\u0191\5@!\2\u0191\u0192\b\36"+
		"\1\2\u0192\u019b\3\2\2\2\u0193\u0194\7\4\2\2\u0194\u0195\7<\2\2\u0195"+
		"\u0196\5<\37\2\u0196\u0197\7>\2\2\u0197\u0198\7\33\2\2\u0198\u0199\5@"+
		"!\2\u0199\u019b\3\2\2\2\u019a\u018b\3\2\2\2\u019a\u0193\3\2\2\2\u019b"+
		";\3\2\2\2\u019c\u019d\5> \2\u019d\u01a4\b\37\1\2\u019e\u019f\7\60\2\2"+
		"\u019f\u01a0\5> \2\u01a0\u01a1\b\37\1\2\u01a1\u01a3\3\2\2\2\u01a2\u019e"+
		"\3\2\2\2\u01a3\u01a6\3\2\2\2\u01a4\u01a2\3\2\2\2\u01a4\u01a5\3\2\2\2\u01a5"+
		"=\3\2\2\2\u01a6\u01a4\3\2\2\2\u01a7\u01a8\5,\27\2\u01a8\u01a9\b \1\2\u01a9"+
		"?\3\2\2\2\u01aa\u01ab\5*\26\2\u01ab\u01ac\b!\1\2\u01acA\3\2\2\2\u01ad"+
		"\u01ae\7!\2\2\u01ae\u01af\5D#\2\u01af\u01b0\7\17\2\2\u01b0C\3\2\2\2\u01b1"+
		"\u01b4\5F$\2\u01b2\u01b3\7\61\2\2\u01b3\u01b5\5J&\2\u01b4\u01b2\3\2\2"+
		"\2\u01b4\u01b5\3\2\2\2\u01b5\u01b8\3\2\2\2\u01b6\u01b8\5J&\2\u01b7\u01b1"+
		"\3\2\2\2\u01b7\u01b6\3\2\2\2\u01b8E\3\2\2\2\u01b9\u01be\5H%\2\u01ba\u01bb"+
		"\7\61\2\2\u01bb\u01bd\5H%\2\u01bc\u01ba\3\2\2\2\u01bd\u01c0\3\2\2\2\u01be"+
		"\u01bc\3\2\2\2\u01be\u01bf\3\2\2\2\u01bfG\3\2\2\2\u01c0\u01be\3\2\2\2"+
		"\u01c1\u01c2\5h\65\2\u01c2\u01c3\7\62\2\2\u01c3\u01c4\5*\26\2\u01c4I\3"+
		"\2\2\2\u01c5\u01c6\7\7\2\2\u01c6\u01c7\5L\'\2\u01c7\u01c8\7\33\2\2\u01c8"+
		"\u01cd\5N(\2\u01c9\u01ca\7\61\2\2\u01ca\u01cc\5N(\2\u01cb\u01c9\3\2\2"+
		"\2\u01cc\u01cf\3\2\2\2\u01cd\u01cb\3\2\2\2\u01cd\u01ce\3\2\2\2\u01ceK"+
		"\3\2\2\2\u01cf\u01cd\3\2\2\2\u01d0\u01d1\5\6\4\2\u01d1\u01d2\7\62\2\2"+
		"\u01d2\u01d3\5\62\32\2\u01d3\u01d6\3\2\2\2\u01d4\u01d6\5\62\32\2\u01d5"+
		"\u01d0\3\2\2\2\u01d5\u01d4\3\2\2\2\u01d6M\3\2\2\2\u01d7\u01d8\5j\66\2"+
		"\u01d8\u01d9\7\62\2\2\u01d9\u01da\79\2\2\u01da\u01db\5D#\2\u01db\u01dc"+
		"\7:\2\2\u01dcO\3\2\2\2\u01dd\u01de\7#\2\2\u01de\u01df\7\33\2\2\u01df\u01e0"+
		"\5R*\2\u01e0Q\3\2\2\2\u01e1\u01e2\5,\27\2\u01e2S\3\2\2\2\u01e3\u01e4\7"+
		"\20\2\2\u01e4\u01e5\7\33\2\2\u01e5\u01e8\5*\26\2\u01e6\u01e8\7\20\2\2"+
		"\u01e7\u01e3\3\2\2\2\u01e7\u01e6\3\2\2\2\u01e8U\3\2\2\2\u01e9\u01ea\7"+
		"?\2\2\u01ea\u01eb\5\62\32\2\u01ebW\3\2\2\2\u01ec\u01ed\7(\2\2\u01ed\u01ee"+
		"\5Z.\2\u01ee\u01f5\b-\1\2\u01ef\u01f0\7\61\2\2\u01f0\u01f1\5Z.\2\u01f1"+
		"\u01f2\b-\1\2\u01f2\u01f4\3\2\2\2\u01f3\u01ef\3\2\2\2\u01f4\u01f7\3\2"+
		"\2\2\u01f5\u01f3\3\2\2\2\u01f5\u01f6\3\2\2\2\u01f6\u01f8\3\2\2\2\u01f7"+
		"\u01f5\3\2\2\2\u01f8\u01f9\7\61\2\2\u01f9\u01fa\b-\1\2\u01faY\3\2\2\2"+
		"\u01fb\u01fc\5h\65\2\u01fc\u01fd\7\62\2\2\u01fd\u01fe\5*\26\2\u01fe\u01ff"+
		"\b.\1\2\u01ff[\3\2\2\2\u0200\u0201\5^\60\2\u0201\u0202\7\61\2\2\u0202"+
		"\u0203\b/\1\2\u0203]\3\2\2\2\u0204\u0205\5`\61\2\u0205\u0206\b\60\1\2"+
		"\u0206\u020b\3\2\2\2\u0207\u0208\5l\67\2\u0208\u0209\b\60\1\2\u0209\u020b"+
		"\3\2\2\2\u020a\u0204\3\2\2\2\u020a\u0207\3\2\2\2\u020b_\3\2\2\2\u020c"+
		"\u020d\7\36\2\2\u020d\u0211\5\6\4\2\u020e\u020f\5b\62\2\u020f\u0210\b"+
		"\61\1\2\u0210\u0212\3\2\2\2\u0211\u020e\3\2\2\2\u0211\u0212\3\2\2\2\u0212"+
		"\u0213\3\2\2\2\u0213\u0214\7\61\2\2\u0214\u0215\5\b\5\2\u0215\u0216\b"+
		"\61\1\2\u0216a\3\2\2\2\u0217\u0218\79\2\2\u0218\u0219\5d\63\2\u0219\u0220"+
		"\b\62\1\2\u021a\u021b\7\61\2\2\u021b\u021c\5d\63\2\u021c\u021d\b\62\1"+
		"\2\u021d\u021f\3\2\2\2\u021e\u021a\3\2\2\2\u021f\u0222\3\2\2\2\u0220\u021e"+
		"\3\2\2\2\u0220\u0221\3\2\2\2\u0221\u0223\3\2\2\2\u0222\u0220\3\2\2\2\u0223"+
		"\u0224\7:\2\2\u0224\u0225\b\62\1\2\u0225c\3\2\2\2\u0226\u0227\5f\64\2"+
		"\u0227\u0228\b\63\1\2\u0228\u0232\3\2\2\2\u0229\u022a\7(\2\2\u022a\u022b"+
		"\5f\64\2\u022b\u022c\b\63\1\2\u022c\u0232\3\2\2\2\u022d\u022e\7\22\2\2"+
		"\u022e\u0232\5f\64\2\u022f\u0230\7\36\2\2\u0230\u0232\5f\64\2\u0231\u0226"+
		"\3\2\2\2\u0231\u0229\3\2\2\2\u0231\u022d\3\2\2\2\u0231\u022f\3\2\2\2\u0232"+
		"e\3\2\2\2\u0233\u0234\5h\65\2\u0234\u0235\7\62\2\2\u0235\u0236\5\62\32"+
		"\2\u0236\u0237\b\64\1\2\u0237g\3\2\2\2\u0238\u0239\5\6\4\2\u0239\u0240"+
		"\b\65\1\2\u023a\u023b\7\60\2\2\u023b\u023c\5\6\4\2\u023c\u023d\b\65\1"+
		"\2\u023d\u023f\3\2\2\2\u023e\u023a\3\2\2\2\u023f\u0242\3\2\2\2\u0240\u023e"+
		"\3\2\2\2\u0240\u0241\3\2\2\2\u0241i\3\2\2\2\u0242\u0240\3\2\2\2\u0243"+
		"\u0248\5\26\f\2\u0244\u0245\7\60\2\2\u0245\u0247\5\26\f\2\u0246\u0244"+
		"\3\2\2\2\u0247\u024a\3\2\2\2\u0248\u0246\3\2\2\2\u0248\u0249\3\2\2\2\u0249"+
		"k\3\2\2\2\u024a\u0248\3\2\2\2\u024b\u024c\7\22\2\2\u024c\u0250\5\6\4\2"+
		"\u024d\u024e\5b\62\2\u024e\u024f\b\67\1\2\u024f\u0251\3\2\2\2\u0250\u024d"+
		"\3\2\2\2\u0250\u0251\3\2\2\2\u0251\u0252\3\2\2\2\u0252\u0253\7\62\2\2"+
		"\u0253\u0254\5n8\2\u0254\u0255\7\61\2\2\u0255\u0256\5\b\5\2\u0256\u0257"+
		"\b\67\1\2\u0257m\3\2\2\2\u0258\u0259\5\62\32\2\u0259o\3\2\2\2\u025a\u025b"+
		"\5\16\b\2\u025b\u025c\7\62\2\2\u025c\u025d\5r:\2\u025d\u0262\3\2\2\2\u025e"+
		"\u025f\5r:\2\u025f\u0260\b9\1\2\u0260\u0262\3\2\2\2\u0261\u025a\3\2\2"+
		"\2\u0261\u025e\3\2\2\2\u0262q\3\2\2\2\u0263\u0264\5t;\2\u0264\u0265\b"+
		":\1\2\u0265\u026a\3\2\2\2\u0266\u0267\5\u009aN\2\u0267\u0268\b:\1\2\u0268"+
		"\u026a\3\2\2\2\u0269\u0263\3\2\2\2\u0269\u0266\3\2\2\2\u026as\3\2\2\2"+
		"\u026b\u026c\5v<\2\u026c\u026d\b;\1\2\u026d\u0276\3\2\2\2\u026e\u026f"+
		"\5\u0090I\2\u026f\u0270\b;\1\2\u0270\u0276\3\2\2\2\u0271\u0276\5\u0094"+
		"K\2\u0272\u0273\5\u0096L\2\u0273\u0274\b;\1\2\u0274\u0276\3\2\2\2\u0275"+
		"\u026b\3\2\2\2\u0275\u026e\3\2\2\2\u0275\u0271\3\2\2\2\u0275\u0272\3\2"+
		"\2\2\u0276u\3\2\2\2\u0277\u0278\5x=\2\u0278\u0279\7/\2\2\u0279\u027a\5"+
		"z>\2\u027a\u027b\b<\1\2\u027bw\3\2\2\2\u027c\u027d\7@\2\2\u027d\u0280"+
		"\5\6\4\2\u027e\u0280\5\6\4\2\u027f\u027c\3\2\2\2\u027f\u027e\3\2\2\2\u0280"+
		"\u0281\3\2\2\2\u0281\u02a0\b=\1\2\u0282\u0283\7;\2\2\u0283\u0284\5z>\2"+
		"\u0284\u028b\b=\1\2\u0285\u0286\7\60\2\2\u0286\u0287\5z>\2\u0287\u0288"+
		"\b=\1\2\u0288\u028a\3\2\2\2\u0289\u0285\3\2\2\2\u028a\u028d\3\2\2\2\u028b"+
		"\u0289\3\2\2\2\u028b\u028c\3\2\2\2\u028c\u028e\3\2\2\2\u028d\u028b\3\2"+
		"\2\2\u028e\u028f\7=\2\2\u028f\u029f\3\2\2\2\u0290\u0291\7<\2\2\u0291\u0296"+
		"\5z>\2\u0292\u0293\7\60\2\2\u0293\u0295\5z>\2\u0294\u0292\3\2\2\2\u0295"+
		"\u0298\3\2\2\2\u0296\u0294\3\2\2\2\u0296\u0297\3\2\2\2\u0297\u0299\3\2"+
		"\2\2\u0298\u0296\3\2\2\2\u0299\u029a\7>\2\2\u029a\u029f\3\2\2\2\u029b"+
		"\u029c\7A\2\2\u029c\u029f\5\6\4\2\u029d\u029f\7?\2\2\u029e\u0282\3\2\2"+
		"\2\u029e\u0290\3\2\2\2\u029e\u029b\3\2\2\2\u029e\u029d\3\2\2\2\u029f\u02a2"+
		"\3\2\2\2\u02a0\u029e\3\2\2\2\u02a0\u02a1\3\2\2\2\u02a1\u02a3\3\2\2\2\u02a2"+
		"\u02a0\3\2\2\2\u02a3\u02a4\b=\1\2\u02a4y\3\2\2\2\u02a5\u02a6\5|?\2\u02a6"+
		"\u02bc\b>\1\2\u02a7\u02a8\7\63\2\2\u02a8\u02b6\b>\1\2\u02a9\u02aa\7\64"+
		"\2\2\u02aa\u02b6\b>\1\2\u02ab\u02ac\7\65\2\2\u02ac\u02b6\b>\1\2\u02ad"+
		"\u02ae\7\66\2\2\u02ae\u02b6\b>\1\2\u02af\u02b0\7\67\2\2\u02b0\u02b6\b"+
		">\1\2\u02b1\u02b2\78\2\2\u02b2\u02b6\b>\1\2\u02b3\u02b4\7\25\2\2\u02b4"+
		"\u02b6\b>\1\2\u02b5\u02a7\3\2\2\2\u02b5\u02a9\3\2\2\2\u02b5\u02ab\3\2"+
		"\2\2\u02b5\u02ad\3\2\2\2\u02b5\u02af\3\2\2\2\u02b5\u02b1\3\2\2\2\u02b5"+
		"\u02b3\3\2\2\2\u02b6\u02b7\3\2\2\2\u02b7\u02b8\5|?\2\u02b8\u02b9\b>\1"+
		"\2\u02b9\u02bb\3\2\2\2\u02ba\u02b5\3\2\2\2\u02bb\u02be\3\2\2\2\u02bc\u02ba"+
		"\3\2\2\2\u02bc\u02bd\3\2\2\2\u02bd\u02bf\3\2\2\2\u02be\u02bc\3\2\2\2\u02bf"+
		"\u02c0\b>\1\2\u02c0{\3\2\2\2\u02c1\u02c6\5~@\2\u02c2\u02c3\t\4\2\2\u02c3"+
		"\u02c5\5~@\2\u02c4\u02c2\3\2\2\2\u02c5\u02c8\3\2\2\2\u02c6\u02c4\3\2\2"+
		"\2\u02c6\u02c7\3\2\2\2\u02c7}\3\2\2\2\u02c8\u02c6\3\2\2\2\u02c9\u02ce"+
		"\5\u0080A\2\u02ca\u02cb\t\5\2\2\u02cb\u02cd\5\u0080A\2\u02cc\u02ca\3\2"+
		"\2\2\u02cd\u02d0\3\2\2\2\u02ce\u02cc\3\2\2\2\u02ce\u02cf\3\2\2\2\u02cf"+
		"\177\3\2\2\2\u02d0\u02ce\3\2\2\2\u02d1\u02d3\t\2\2\2\u02d2\u02d1\3\2\2"+
		"\2\u02d2\u02d3\3\2\2\2\u02d3\u02d4\3\2\2\2\u02d4\u02d5\5\u0082B\2\u02d5"+
		"\u0081\3\2\2\2\u02d6\u02e1\5x=\2\u02d7\u02d8\79\2\2\u02d8\u02d9\5z>\2"+
		"\u02d9\u02da\7:\2\2\u02da\u02e1\3\2\2\2\u02db\u02e1\5\u0086D\2\u02dc\u02e1"+
		"\5\u0084C\2\u02dd\u02e1\5\u008aF\2\u02de\u02df\7\32\2\2\u02df\u02e1\5"+
		"\u0082B\2\u02e0\u02d6\3\2\2\2\u02e0\u02d7\3\2\2\2\u02e0\u02db\3\2\2\2"+
		"\u02e0\u02dc\3\2\2\2\u02e0\u02dd\3\2\2\2\u02e0\u02de\3\2\2\2\u02e1\u0083"+
		"\3\2\2\2\u02e2\u02e7\5\30\r\2\u02e3\u02e7\5\24\13\2\u02e4\u02e7\5 \21"+
		"\2\u02e5\u02e7\7\31\2\2\u02e6\u02e2\3\2\2\2\u02e6\u02e3\3\2\2\2\u02e6"+
		"\u02e4\3\2\2\2\u02e6\u02e5\3\2\2\2\u02e7\u0085\3\2\2\2\u02e8\u02e9\5\6"+
		"\4\2\u02e9\u02ea\79\2\2\u02ea\u02eb\5\u0088E\2\u02eb\u02ec\7:\2\2\u02ec"+
		"\u0087\3\2\2\2\u02ed\u02f2\5\u0092J\2\u02ee\u02ef\7\60\2\2\u02ef\u02f1"+
		"\5\u0092J\2\u02f0\u02ee\3\2\2\2\u02f1\u02f4\3\2\2\2\u02f2\u02f0\3\2\2"+
		"\2\u02f2\u02f3\3\2\2\2\u02f3\u0089\3\2\2\2\u02f4\u02f2\3\2\2\2\u02f5\u02f6"+
		"\7;\2\2\u02f6\u02f7\5\u008cG\2\u02f7\u02f8\7=\2\2\u02f8\u02fe\3\2\2\2"+
		"\u02f9\u02fa\7<\2\2\u02fa\u02fb\5\u008cG\2\u02fb\u02fc\7>\2\2\u02fc\u02fe"+
		"\3\2\2\2\u02fd\u02f5\3\2\2\2\u02fd\u02f9\3\2\2\2\u02fe\u008b\3\2\2\2\u02ff"+
		"\u0304\5\u008eH\2\u0300\u0301\7\60\2\2\u0301\u0303\5\u008eH\2\u0302\u0300"+
		"\3\2\2\2\u0303\u0306\3\2\2\2\u0304\u0302\3\2\2\2\u0304\u0305\3\2\2\2\u0305"+
		"\u0309\3\2\2\2\u0306\u0304\3\2\2\2\u0307\u0309\3\2\2\2\u0308\u02ff\3\2"+
		"\2\2\u0308\u0307\3\2\2\2\u0309\u008d\3\2\2\2\u030a\u030d\5z>\2\u030b\u030c"+
		"\7B\2\2\u030c\u030e\5z>\2\u030d\u030b\3\2\2\2\u030d\u030e\3\2\2\2\u030e"+
		"\u008f\3\2\2\2\u030f\u0314\5\6\4\2\u0310\u0311\79\2\2\u0311\u0312\5\u0088"+
		"E\2\u0312\u0313\7:\2\2\u0313\u0315\3\2\2\2\u0314\u0310\3\2\2\2\u0314\u0315"+
		"\3\2\2\2\u0315\u0091\3\2\2\2\u0316\u0317\5z>\2\u0317\u0093\3\2\2\2\u0318"+
		"\u0319\7\23\2\2\u0319\u031a\5\16\b\2\u031a\u0095\3\2\2\2\u031b\u031c\3"+
		"\2\2\2\u031c\u0097\3\2\2\2\u031d\u031e\3\2\2\2\u031e\u0099\3\2\2\2\u031f"+
		"\u0324\5\u009cO\2\u0320\u0324\5\u00a0Q\2\u0321\u0324\5\u00a8U\2\u0322"+
		"\u0324\5\u00b6\\\2\u0323\u031f\3\2\2\2\u0323\u0320\3\2\2\2\u0323\u0321"+
		"\3\2\2\2\u0323\u0322\3\2\2\2\u0324\u009b\3\2\2\2\u0325\u0326\7\5\2\2\u0326"+
		"\u0327\5\u009eP\2\u0327\u0328\7\17\2\2\u0328\u0329\bO\1\2\u0329\u009d"+
		"\3\2\2\2\u032a\u032b\5p9\2\u032b\u0332\bP\1\2\u032c\u032d\7\61\2\2\u032d"+
		"\u032e\5p9\2\u032e\u032f\bP\1\2\u032f\u0331\3\2\2\2\u0330\u032c\3\2\2"+
		"\2\u0331\u0334\3\2\2\2\u0332\u0330\3\2\2\2\u0332\u0333\3\2\2\2\u0333\u009f"+
		"\3\2\2\2\u0334\u0332\3\2\2\2\u0335\u0338\5\u00a2R\2\u0336\u0338\5\u00a4"+
		"S\2\u0337\u0335\3\2\2\2\u0337\u0336\3\2\2\2\u0338\u00a1\3\2\2\2\u0339"+
		"\u033a\7\24\2\2\u033a\u033b\5z>\2\u033b\u033c\7$\2\2\u033c\u033f\5p9\2"+
		"\u033d\u033e\7\16\2\2\u033e\u0340\5p9\2\u033f\u033d\3\2\2\2\u033f\u0340"+
		"\3\2\2\2\u0340\u00a3\3\2\2\2\u0341\u0342\7\7\2\2\u0342\u0343\5z>\2\u0343"+
		"\u0344\7\33\2\2\u0344\u0349\5\u00a6T\2\u0345\u0346\7\61\2\2\u0346\u0348"+
		"\5\u00a6T\2\u0347\u0345\3\2\2\2\u0348\u034b\3\2\2\2\u0349\u0347\3\2\2"+
		"\2\u0349\u034a\3\2\2\2\u034a\u034f\3\2\2\2\u034b\u0349\3\2\2\2\u034c\u034d"+
		"\7\61\2\2\u034d\u034e\7\16\2\2\u034e\u0350\5\u009eP\2\u034f\u034c\3\2"+
		"\2\2\u034f\u0350\3\2\2\2\u0350\u0351\3\2\2\2\u0351\u0352\7\17\2\2\u0352"+
		"\u00a5\3\2\2\2\u0353\u0354\5j\66\2\u0354\u0355\7\62\2\2\u0355\u0356\5"+
		"p9\2\u0356\u00a7\3\2\2\2\u0357\u035b\5\u00aaV\2\u0358\u035b\5\u00acW\2"+
		"\u0359\u035b\5\u00aeX\2\u035a\u0357\3\2\2\2\u035a\u0358\3\2\2\2\u035a"+
		"\u0359\3\2\2\2\u035b\u00a9\3\2\2\2\u035c\u035d\7)\2\2\u035d\u035e\5z>"+
		"\2\u035e\u035f\7\f\2\2\u035f\u0360\5p9\2\u0360\u00ab\3\2\2\2\u0361\u0362"+
		"\7\"\2\2\u0362\u0363\5\u009eP\2\u0363\u0364\7\'\2\2\u0364\u0365\5z>\2"+
		"\u0365\u00ad\3\2\2\2\u0366\u0367\7\21\2\2\u0367\u0368\5\6\4\2\u0368\u0369"+
		"\7/\2\2\u0369\u036a\5\u00b0Y\2\u036a\u036b\7\f\2\2\u036b\u036c\5p9\2\u036c"+
		"\u00af\3\2\2\2\u036d\u036e\5\u00b2Z\2\u036e\u036f\t\6\2\2\u036f\u0370"+
		"\5\u00b4[\2\u0370\u00b1\3\2\2\2\u0371\u0372\5z>\2\u0372\u00b3\3\2\2\2"+
		"\u0373\u0374\5z>\2\u0374\u00b5\3\2\2\2\u0375\u0376\7*\2\2\u0376\u0377"+
		"\5\u00b8]\2\u0377\u0378\7\f\2\2\u0378\u0379\5p9\2\u0379\u00b7\3\2\2\2"+
		"\u037a\u037f\5x=\2\u037b\u037c\7\60\2\2\u037c\u037e\5x=\2\u037d\u037b"+
		"\3\2\2\2\u037e\u0381\3\2\2\2\u037f\u037d\3\2\2\2\u037f\u0380\3\2\2\2\u0380"+
		"\u00b9\3\2\2\2\u0381\u037f\3\2\2\2B\u00bc\u00c8\u00d2\u00e3\u00e5\u00f5"+
		"\u0105\u0127\u012b\u013b\u0142\u0146\u014d\u0158\u0164\u0172\u0179\u0181"+
		"\u0187\u019a\u01a4\u01b4\u01b7\u01be\u01cd\u01d5\u01e7\u01f5\u020a\u0211"+
		"\u0220\u0231\u0240\u0248\u0250\u0261\u0269\u0275\u027f\u028b\u0296\u029e"+
		"\u02a0\u02b5\u02bc\u02c6\u02ce\u02d2\u02e0\u02e6\u02f2\u02fd\u0304\u0308"+
		"\u030d\u0314\u0323\u0332\u0337\u033f\u0349\u034f\u035a\u037f";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}