.class public final Lorg/apache/commons/digester/annotations/providers/SetTopRuleProvider;
.super Ljava/lang/Object;
.source "SetTopRuleProvider.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
        "Lorg/apache/commons/digester/annotations/rules/SetTop;",
        "Ljava/lang/reflect/Method;",
        "Lorg/apache/commons/digester/SetTopRule;",
        ">;"
    }
.end annotation


# instance fields
.field private methodName:Ljava/lang/String;

.field private paramType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lorg/apache/commons/digester/Rule;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/digester/annotations/providers/SetTopRuleProvider;->get()Lorg/apache/commons/digester/SetTopRule;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/digester/SetTopRule;
    .locals 3

    .line 49
    new-instance v0, Lorg/apache/commons/digester/SetTopRule;

    iget-object v1, p0, Lorg/apache/commons/digester/annotations/providers/SetTopRuleProvider;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/digester/annotations/providers/SetTopRuleProvider;->paramType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/digester/SetTopRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic init(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/apache/commons/digester/annotations/rules/SetTop;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/providers/SetTopRuleProvider;->init(Lorg/apache/commons/digester/annotations/rules/SetTop;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public init(Lorg/apache/commons/digester/annotations/rules/SetTop;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 41
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/annotations/providers/SetTopRuleProvider;->methodName:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/annotations/providers/SetTopRuleProvider;->paramType:Ljava/lang/String;

    return-void
.end method
