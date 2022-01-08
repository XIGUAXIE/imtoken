.class public final Lorg/apache/commons/digester/annotations/providers/ObjectCreateRuleProvider;
.super Ljava/lang/Object;
.source "ObjectCreateRuleProvider.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
        "Lorg/apache/commons/digester/annotations/rules/ObjectCreate;",
        "Ljava/lang/Class<",
        "*>;",
        "Lorg/apache/commons/digester/ObjectCreateRule;",
        ">;"
    }
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/apache/commons/digester/ObjectCreateRule;
    .locals 2

    .line 45
    new-instance v0, Lorg/apache/commons/digester/ObjectCreateRule;

    iget-object v1, p0, Lorg/apache/commons/digester/annotations/providers/ObjectCreateRuleProvider;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic get()Lorg/apache/commons/digester/Rule;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/digester/annotations/providers/ObjectCreateRuleProvider;->get()Lorg/apache/commons/digester/ObjectCreateRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 29
    check-cast p1, Lorg/apache/commons/digester/annotations/rules/ObjectCreate;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/providers/ObjectCreateRuleProvider;->init(Lorg/apache/commons/digester/annotations/rules/ObjectCreate;Ljava/lang/Class;)V

    return-void
.end method

.method public init(Lorg/apache/commons/digester/annotations/rules/ObjectCreate;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/annotations/rules/ObjectCreate;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 38
    iput-object p2, p0, Lorg/apache/commons/digester/annotations/providers/ObjectCreateRuleProvider;->clazz:Ljava/lang/Class;

    return-void
.end method
