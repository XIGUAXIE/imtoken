.class public Lcom/sun/jna/MethodResultContext;
.super Lcom/sun/jna/FunctionResultContext;
.source "MethodResultContext.java"


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/Function;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/jna/FunctionResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;)V

    .line 36
    iput-object p4, p0, Lcom/sun/jna/MethodResultContext;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sun/jna/MethodResultContext;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method
