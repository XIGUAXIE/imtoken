.class public final Lorg/apache/commons/digester/annotations/providers/CallParamRuleProvider;
.super Ljava/lang/Object;
.source "CallParamRuleProvider.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
        "Lorg/apache/commons/digester/annotations/rules/CallParam;",
        "Lorg/apache/commons/digester/annotations/reflect/MethodArgument;",
        "Lorg/apache/commons/digester/CallParamRule;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/apache/commons/digester/CallParamRule;
    .locals 2

    .line 46
    new-instance v0, Lorg/apache/commons/digester/CallParamRule;

    iget v1, p0, Lorg/apache/commons/digester/annotations/providers/CallParamRuleProvider;->index:I

    invoke-direct {v0, v1}, Lorg/apache/commons/digester/CallParamRule;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic get()Lorg/apache/commons/digester/Rule;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/digester/annotations/providers/CallParamRuleProvider;->get()Lorg/apache/commons/digester/CallParamRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/apache/commons/digester/annotations/rules/CallParam;

    check-cast p2, Lorg/apache/commons/digester/annotations/reflect/MethodArgument;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/providers/CallParamRuleProvider;->init(Lorg/apache/commons/digester/annotations/rules/CallParam;Lorg/apache/commons/digester/annotations/reflect/MethodArgument;)V

    return-void
.end method

.method public init(Lorg/apache/commons/digester/annotations/rules/CallParam;Lorg/apache/commons/digester/annotations/reflect/MethodArgument;)V
    .locals 0

    .line 39
    invoke-virtual {p2}, Lorg/apache/commons/digester/annotations/reflect/MethodArgument;->getIndex()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/digester/annotations/providers/CallParamRuleProvider;->index:I

    return-void
.end method
