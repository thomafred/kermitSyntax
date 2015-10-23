" Vim syntax file
" Language: Kermit
" Maintainer: Thomas Fredriksen
" Latest Revision: 22 October 2015


if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match

syn keyword kmtSyntax DEFINE DECLARE UNDEFINE UNDECLARE ASSIGN EVALUATE SEXPRESSION
syn keyword kmtSyntax ARRAY SORT INPUT OUTPUT IF FOR WHILE SWITCH GOTO ECHO ASK GETC
syn keyword kmtSyntax GETOK ASSERT WAIT SLEEP FOPEN FREAD FWRITE FCLOSE STOP END
syn keyword kmtSyntax RETURN LEARN SHIFT TRACE VOID INCREMENT DECREMENT HELP


" Statements

syn keyword kmtFor    for FOR
syn keyword kmtSwitch switch SWITCH
syn keyword kmtWhile  while WHILE
syn keyword kmtIf     if else IF ELSE
syn keyword kmtDef    def _def define _define DEFINE _DEFINE
syn keyword kmtDecl   declare DECLARE
syn keyword kmtAsg    asg _asg assign _assign ASSIGN _ASSIGN
syn keyword kmtUDef   undefine UNDEFINE
syn keyword kmtUDecl  undeclare UNDECLARE
syn keyword kmtShift  shift SHIFT
syn keyword kmtExit   exit EXIT
syn keyword kmtLocal  local LOCAL


" Booleans operators

syn keyword kmtComp   AND
syn keyword kmtComp   OR
syn keyword kmtComp   EQUAL
syn keyword kmtComp   not NOT
syn keyword kmtComp   LLT
syn keyword kmtComp   LGT
syn match kmtComp     "[\>\<]?\="


" Boolean constants

syn keyword kmtBool   fail FAILURE ERROR
syn keyword kmtBool   OK SUCCESS


" Conditions 

syn keyword kmtAvails CRYPTO KERBEROS4 KERBEROS5 NTLM SRP SSL contained

syn match kmtCond     "AVAILABLE\s+[A-Z]+" contains=kmtAvails
syn keyword kmtCond   declared DECLARED
syn keyword kmtCond   defined DEFINED
syn keyword kmtCond   exist EXIST
syn keyword kmtCond   match MATCH


"syn region kmtScope   start="{" end ="}"

syn match kmtrDef     "define\s+[a-zA-Z][\w_]*\s[$\{]" contains=kmtDef


" Functions

syn keyword kmtEcho   echo ECHO
syn match kmtFunc     "\\[a-zA-Z]\w*" contains=kmtEq
syn region kmtFCall   start="\\[a-zA-Z]\w*\s*(" end=")" contains=kmtFCall,kmtFunc


" Variables

syn match kmtSVar     "\\%[a-zA-Z]"
syn match kmtArg      "\\%\d"


" Strings

syn region kmtString start="\"" end="\"" contains=kmtSVar,kmtArg,kmtStrEsc,@Spell
syn match kmtStrEsc "\\." contains=kmtSVar,kmtArg,kmtFCall contained


" Comments

syn keyword kmtTodo   TODO FIXME
syn match kmtComment  ";.*$" contains=kmtTodo
syn match kmtEnv      "^#.*$" contains=@NoSpell


" Special Functions

syn keyword kmtsfunc add ADD
syn keyword kmtsfunc answer ANSWER
syn keyword kmtsfunc apc APC
syn keyword kmtsfunc array ARRAY
syn keyword kmtsfunc ask ASK
syn keyword kmtsfunc askq ASKQ
syn keyword kmtsfunc associate ASSOCIATE
syn keyword kmtsfunc authenticate AUTHENTICATE
syn keyword kmtsfunc back BACK
syn keyword kmtsfunc browse BROWSE
syn keyword kmtsfunc bye BYE
syn keyword kmtsfunc cd CD
syn keyword kmtsfunc check CHECK
syn keyword kmtsfunc chmod CHMOD
syn keyword kmtsfunc clear CLEAR
syn keyword kmtsfunc close CLOSE
syn keyword kmtsfunc connect CONNECT
syn keyword kmtsfunc copy COPY
syn keyword kmtsfunc date DATE
syn keyword kmtsfunc debug DEBUG
syn keyword kmtsfunc decrement DECREMENT
syn keyword kmtsfunc delete DELETE
syn keyword kmtsfunc dial DIAL
syn keyword kmtsfunc directory DIRECTORY
syn keyword kmtsfunc disable DISABLE
syn keyword kmtsfunc do DO
syn keyword kmtsfunc edit EDIT
syn keyword kmtsfunc enable ENABLE
syn keyword kmtsfunc end END
syn keyword kmtsfunc evaluate EVALUATE
syn keyword kmtsfunc exit EXIT
syn keyword kmtsfunc file FILE
syn keyword kmtsfunc finish FINISH
syn keyword kmtsfunc ftp FTP
syn keyword kmtsfunc get GET
syn keyword kmtsfunc getc GETC
syn keyword kmtsfunc getok GETOK
syn keyword kmtsfunc goto GOTO
syn keyword kmtsfunc grep GREP
syn keyword kmtsfunc head HEAD
syn keyword kmtsfunc hangup HANGUP
syn keyword kmtsfunc HELP
syn keyword kmtsfunc http HTTP
syn keyword kmtsfunc increment INCREMENT
syn keyword kmtsfunc input INPUT
syn keyword kmtsfunc INTRO
syn keyword kmtsfunc kcd KCD
syn keyword kmtsfunc learn LEARN
syn keyword kmtsfunc LICENSE
syn keyword kmtsfunc lineout LINEOUT
syn keyword kmtsfunc log LOG
syn keyword kmtsfunc login LOGIN
syn keyword kmtsfunc logout LOGOUT
syn keyword kmtsfunc lookup LOOKUP
syn keyword kmtsfunc mail MAIL
syn keyword kmtsfunc manual MANUAL
syn keyword kmtsfunc message MESSAGE
syn keyword kmtsfunc minput MINPUT
syn keyword kmtsfunc mget MGET
syn keyword kmtsfunc mkdir MKDIR
syn keyword kmtsfunc mmove MMOVE
syn keyword kmtsfunc move MOVE
syn keyword kmtsfunc msend MSEND
syn keyword kmtsfunc msleep MSLEEP
syn keyword kmtsfunc open OPEN
syn keyword kmtsfunc orientation ORIENTATION
syn keyword kmtsfunc output OUTPUT
syn keyword kmtsfunc pause PAUSE
syn keyword kmtsfunc pdial PDIAL
syn keyword kmtsfunc pipe PIPE
syn keyword kmtsfunc print PRINT
syn keyword kmtsfunc pty PTY
syn keyword kmtsfunc purge PURGE
syn keyword kmtsfunc push PUSH
syn keyword kmtsfunc pwd PWD
syn keyword kmtsfunc quit QUIT
syn keyword kmtsfunc read READ
syn keyword kmtsfunc receive RECEIVE
syn keyword kmtsfunc redial REDIAL
syn keyword kmtsfunc redirect REDIRECT
syn keyword kmtsfunc redo REDO
syn keyword kmtsfunc reget REGET
syn keyword kmtsfunc remote REMOTE
syn keyword kmtsfunc remove REMOVE
syn keyword kmtsfunc rename RENAME
syn keyword kmtsfunc resend RESEND
syn keyword kmtsfunc return RETURN
syn keyword kmtsfunc rlogin RLOGIN
syn keyword kmtsfunc rmdir RMDIR
syn keyword kmtsfunc run RUN
syn keyword kmtsfunc screen SREEN
syn keyword kmtsfunc script SCRIPT
syn keyword kmtsfunc send SEND
syn keyword kmtsfunc server SERVER
syn keyword kmtsfunc set SET
syn keyword kmtsfunc show SHOW
syn keyword kmtsfunc space SPACE
syn keyword kmtsfunc ssh SSH
syn keyword kmtsfunc statistics STATISTICS
syn keyword kmtsfunc status STATUS
syn keyword kmtsfunc stop STOP
syn keyword kmtsfunc SUPPORT
syn keyword kmtsfunc suspend SUSPEND
syn keyword kmtsfunc tail TAIL
syn keyword kmtsfunc take TAKE
syn keyword kmtsfunc telnet TELNET
syn keyword kmtsfunc touch TOUCH
syn keyword kmtsfunc trace TRACE
syn keyword kmtsfunc translate TRANSLATE
syn keyword kmtsfunc transmit TRANSMIT
syn keyword kmtsfunc type TYPE
syn keyword kmtsfunc version VERSION
syn keyword kmtsfunc void VOID
syn keyword kmtsfunc wait WAIT
syn keyword kmtsfunc where WHERE
syn keyword kmtsfunc who WHO
syn keyword kmtsfunc write WRITE
syn keyword kmtsfunc xecho XECHO
syn keyword kmtsfunc xmessage XMESSAGE


if version >= 508 || !exists("did_kermit_syn_inits")
  if version < 508
    let did_kermit_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink kmtTodo    Todo
  HiLink kmtFor     Repeat
  HiLink kmtSwitch  Statement
  HiLink kmtWhile   Repeat
  HiLink kmtIf      Statement
  HiLink kmtDef     Statement
  HiLink kmtDecl    Statement
  HiLink kmtAsg     Statement
  HiLink kmtUDef    Statement
  HiLink kmtUDecl   Statement
  HiLink kmtShift   Statement
  HiLink kmtExit    Statement
  HiLink kmtLocal   Statement
  
  HiLink kmtEcho    Function
  HiLink kmtFunc    Function
  HiLink kmtFcall   Ignore

  HiLink kmtComp    Operator
  HiLink kmtBool    Boolean
  HiLink kmtCond    Conditional

"  HiLink kmtScope   Ignore

  HiLink kmtString  String
  HiLink kmtStrEsc  String


  HiLink kmtrDef    Macro

  HiLink kmtSVar    Type
  HiLink kmtArg     Type

  HiLink kmtComment Comment
  HiLink kmtEnv     Comment

  HiLink kmtsfunc   Function

  delcommand HiLink
endif

let b:current_syntax = "kermit"
