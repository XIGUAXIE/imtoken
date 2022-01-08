.class public final Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;
.super Ljava/lang/Object;
.source "SetPropertiesRuleProvider.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
        "Lorg/apache/commons/digester/annotations/rules/SetProperty;",
        "Ljava/lang/reflect/Field;",
        "Lorg/apache/commons/digester/SetPropertiesRule;",
        ">;"
    }
.end annotation


# instance fields
.field private final aliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->aliases:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addAlias(Lorg/apache/commons/digester/annotations/rules/SetProperty;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 56
    invoke-interface {p1}, Lorg/apache/commons/digester/annotations/rules/SetProperty;->attributeName()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->aliases:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->aliases:Ljava/util/Map;

    invoke-interface {p1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public bridge synthetic get()Lorg/apache/commons/digester/Rule;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->get()Lorg/apache/commons/digester/SetPropertiesRule;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/digester/SetPropertiesRule;
    .locals 6

    .line 70
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->aliases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->aliases:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->aliases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v3

    add-int/lit8 v5, v3, 0x1

    .line 76
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Lorg/apache/commons/digester/SetPropertiesRule;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/digester/SetPropertiesRule;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic init(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/apache/commons/digester/annotations/rules/SetProperty;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->init(Lorg/apache/commons/digester/annotations/rules/SetProperty;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public init(Lorg/apache/commons/digester/annotations/rules/SetProperty;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;->addAlias(Lorg/apache/commons/digester/annotations/rules/SetProperty;Ljava/lang/reflect/Field;)V

    return-void
.end method
