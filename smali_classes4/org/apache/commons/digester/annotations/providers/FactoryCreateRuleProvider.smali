.class public final Lorg/apache/commons/digester/annotations/providers/FactoryCreateRuleProvider;
.super Ljava/lang/Object;
.source "FactoryCreateRuleProvider.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
        "Lorg/apache/commons/digester/annotations/rules/FactoryCreate;",
        "Ljava/lang/Class<",
        "*>;",
        "Lorg/apache/commons/digester/FactoryCreateRule;",
        ">;"
    }
.end annotation


# instance fields
.field private factoryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private ignoreCreateExceptions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/apache/commons/digester/FactoryCreateRule;
    .locals 3

    .line 48
    new-instance v0, Lorg/apache/commons/digester/FactoryCreateRule;

    iget-object v1, p0, Lorg/apache/commons/digester/annotations/providers/FactoryCreateRuleProvider;->factoryClass:Ljava/lang/Class;

    iget-boolean v2, p0, Lorg/apache/commons/digester/annotations/providers/FactoryCreateRuleProvider;->ignoreCreateExceptions:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public bridge synthetic get()Lorg/apache/commons/digester/Rule;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/digester/annotations/providers/FactoryCreateRuleProvider;->get()Lorg/apache/commons/digester/FactoryCreateRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 29
    check-cast p1, Lorg/apache/commons/digester/annotations/rules/FactoryCreate;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/providers/FactoryCreateRuleProvider;->init(Lorg/apache/commons/digester/annotations/rules/FactoryCreate;Ljava/lang/Class;)V

    return-void
.end method

.method public init(Lorg/apache/commons/digester/annotations/rules/FactoryCreate;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/annotations/rules/FactoryCreate;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Lorg/apache/commons/digester/annotations/rules/FactoryCreate;->factoryClass()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/digester/annotations/providers/FactoryCreateRuleProvider;->factoryClass:Ljava/lang/Class;

    .line 41
    invoke-interface {p1}, Lorg/apache/commons/digester/annotations/rules/FactoryCreate;->ignoreCreateExceptions()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/digester/annotations/providers/FactoryCreateRuleProvider;->ignoreCreateExceptions:Z

    return-void
.end method
