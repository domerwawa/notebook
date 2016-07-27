#*******************************************************************************
#　　プロジェクト　:
#　　サブシステム　:
#　　モジュール名　:TEST.make
#　　名称　　　　　:
#　　処理概要　　　:    
#　　使用方法　　　:
#　　備考　　　　　:なし
#================================================================================
#********************************************************************************
LOADNAME	=	TEST
# ------------------------------------------------------------------------------
# Directory definition
# ------------------------------------------------------------------------------
#BASEDIR	=	/home/apl/debug/cmn
BASEDIR		=	/home/apl/debug/FA
CPYDIR		=	$(BASEDIR)/MAKE/src/copy
SRCMAINDIR	=	$(BASEDIR)/MAKE/src/bt/sub
SRCSUBDIR	=	$(BASEDIR)/MAKE/src/bt/sub
OBJDIR		=	$(BASEDIR)/BL/obj
EXEDIR		=	$(BASEDIR)/BL/exe
MKLOGDIR	=	$(BASEDIR)/BL/mklog
#NSCCPYDIR	=	/usr2/nsc/cpy
#COBOLDIR	=	/work/infra/mfcobol/rhatx86
COBOLDIR	=	/opt/microfocus/cobol
#ORACLEDIR	=	/opt/app/oracle/product/10.2.0/client_1
ORACLEDIR	=	/opt/app/oracle/product/10.1.0/client_1
#VPATH		=	/work/infra/mfcobol/ts/src/copy:/usr2/nsc/cpy
VPATH		=	/work/infra/mfcobol/ts/src/copy
TP1DIR		=	/opt/betran01
# ------------------------------------------------------------------------------
# Load module difinition
# ------------------------------------------------------------------------------
LOAD		=	$(EXEDIR)/$(LOADNAME)
# ------------------------------------------------------------------------------
# Object module definition
# ------------------------------------------------------------------------------
OBJS		=	$(OBJDIR)/TEST.o
# ------------------------------------------------------------------------------
# Libraly definition
# ------------------------------------------------------------------------------
LIBPATH		=	 -L$/usr2/nsc/lib \
                         -L$(BASEDIR)/lib \
                         -L$(ORACLEDIR)/lib \
                         -L$(TP1DIR)/lib
APLIB		=        -L$(BASEDIR)/BL/lib/ -lcz000 -lcz001
ORALIB		=	$(ORACLEDIR)/precomp/lib/cobsqlintf.o \
			`cat $(ORACLEDIR)/lib/sysliblist` \
			-lclntsh -lm -lpthread
TP1LIB		=	-lbetran -ltactk
LIB		=	$(LIBPATH) $(APLIB) $(ORALIB) $(WOMLIB) $(TP1LIB)
WOMLIB		=	/utstar_cmn/wom/lib/libwommd.so
# ------------------------------------------------------------------------------
# Compiler & Compile / Linkage flags definition
# ------------------------------------------------------------------------------
COB		=	$(COBOLDIR)/bin/cob
COBINC = COBCPY=$(CPYDIR)
COBFLAGS	=	-xcP +z -C COPYEXT"(copy,cpy,CPY,cbl)" +DS1.1c +DA1.1c
PROCOB		=	$(ORACLEDIR)/bin/procob
PROCOBINC	=	include=$(CPYDIR) \
			include=/usr2/nsc/cpy \
			include=$(ORACLEDIR)/precomp/public
PROCFLAGS	=	dbms=v8 ireclen=500 \
			maxliteral=132 oreclen=500 \
			sqlcheck=syntax userid=$(USERID) unsafe_null=yes
USERID=/
#LINKFLAGS	=	-Q -Bimmediate -Q +s,-a,default -Q +vnocompatwarnings
# ------------------------------------------------------------------------------
# make all
# ------------------------------------------------------------------------------
all: $(LOAD)
$(LOAD): $(OBJS)
	$(COB) -xo $(LOAD) $(LINKFLAGS) $(OBJS) $(LIB)

$(OBJDIR)/TEST.o: $(SRCMAINDIR)/TEST.pco                  
	cd $(OBJDIR) ; $(PROCOB) $(PROCFLAGS) $(PROCOBINC) iname=$(SRCMAINDIR)/TEST.pco oname=$(SRCMAINDIR)/TEST.cob
	cd $(OBJDIR) ; $(COB) $(COBFLAGS) $(SRCMAINDIR)/TEST.cob
	mv $(SRCMAINDIR)/TEST.cob $(MKLOGDIR)/.
	mv $(OBJDIR)/TEST.lis $(MKLOGDIR)/.
	mv $(OBJDIR)/TEST.int $(MKLOGDIR)/.
	mv $(OBJDIR)/TEST.lst $(MKLOGDIR)/.
	mv $(OBJDIR)/TEST.idy $(MKLOGDIR)/.



clean:
	cd $(OBJDIR);rm $(OBJDIR)/TEST.o
rebuild : clean all

verinfo :
	+@echo "● MAKE $(LOADNAME) : $(BASEDIR) "
