.class public final Lorg/apache/commons/digester/annotations/handlers/SetPropertiesLoaderHandler;
.super Ljava/lang/Object;
.source "SetPropertiesLoaderHandler.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/DigesterLoaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/digester/annotations/DigesterLoaderHandler<",
        "Lorg/apache/commons/digester/annotations/rules/SetProperty;",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 0

    .line 32
    check-cast p1, Lorg/apache/commons/digester/annotations/rules/SetProperty;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/digester/annotations/handlers/SetPropertiesLoaderHandler;->handle(Lorg/apache/commons/digester/annotations/rules/SetProperty;Ljava/lang/reflect/Field;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    return-void
.end method

.method public handle(Lorg/apache/commons/digester/annotations/rules/SetProperty;Ljava/lang/reflect/Field;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 2

    .line 38
    invoke-interface {p1}, Lorg/apache/commons/digester/annotations/rules/SetProperty;->pattern()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;

    invoke-virtual {p3, v0, v1}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->getProvider(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;

    invoke-direct {v0}, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;-><init>()V

    .line 43
    invoke-interface {p1}, Lorg/apache/commons/digester/annotations/rules/SetProperty;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->addRuleProvider(Ljava/lang/String;Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;)V

    .line 46
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->addAlias(Lorg/apache/commons/digester/annotations/rules/SetProperty;Ljava/lang/reflect/Field;)V

    return-void
.end method
