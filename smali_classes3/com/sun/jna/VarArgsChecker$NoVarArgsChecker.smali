.class final Lcom/sun/jna/VarArgsChecker$NoVarArgsChecker;
.super Lcom/sun/jna/VarArgsChecker;
.source "VarArgsChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/VarArgsChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoVarArgsChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/sun/jna/VarArgsChecker;-><init>(Lcom/sun/jna/VarArgsChecker$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/jna/VarArgsChecker$1;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/sun/jna/VarArgsChecker$NoVarArgsChecker;-><init>()V

    return-void
.end method


# virtual methods
.method fixedArgs(Ljava/lang/reflect/Method;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method isVarArgs(Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
