.class public final Lorg/apache/commons/digester/annotations/providers/AttributeCallParamRuleProvider;
.super Ljava/lang/Object;
.source "AttributeCallParamRuleProvider.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
        "Lorg/apache/commons/digester/annotations/rules/AttributeCallParam;",
        "Lorg/apache/commons/digester/annotations/reflect/MethodArgument;",
        "Lorg/apache/commons/digester/CallParamRule;",
        ">;"
    }
.end annotation


# instance fields
.field private attribute:Ljava/lang/String;

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
    .locals 3

    .line 50
    new-instance v0, Lorg/apache/commons/digester/CallParamRule;

    iget v1, p0, Lorg/apache/commons/digester/annotations/providers/AttributeCallParamRuleProvider;->index:I

    iget-object v2, p0, Lorg/apache/commons/digester/annotations/providers/AttributeCallParamRuleProvider;->attribute:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/digester/CallParamRule;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic get()Lorg/apache/commons/digester/Rule;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/digester/annotations/providers/AttributeCallParamRuleProvider;->get()Lorg/apache/commons/digester/CallParamRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/apache/commons/digester/annotations/rules/AttributeCallParam;

    check-cast p2, Lorg/apache/commons/digester/annotations/reflect/MethodArgument;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/providers/AttributeCallParamRuleProvider;->init(Lorg/apache/commons/digester/annotations/rules/AttributeCallParam;Lorg/apache/commons/digester/annotations/reflect/MethodArgument;)V

    return-void
.end method

.method public init(Lorg/apache/commons/digester/annotations/rules/AttributeCallParam;Lorg/apache/commons/digester/annotations/reflect/MethodArgument;)V
    .locals 0

    .line 42
    invoke-interface {p1}, Lorg/apache/commons/digester/annotations/rules/AttributeCallParam;->attribute()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/annotations/providers/AttributeCallParamRuleProvider;->attribute:Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, Lorg/apache/commons/digester/annotations/reflect/MethodArgument;->getIndex()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/digester/annotations/providers/AttributeCallParamRuleProvider;->index:I

    return-void
.end method
