.class public final Lorg/apache/commons/digester/annotations/internal/RuleSetCache;
.super Ljava/lang/Object;
.source "RuleSetCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cacheSize:I

.field private final capacity:I

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private final loadFactor:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 41
    iput v0, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->cacheSize:I

    const/high16 v0, 0x3f400000    # 0.75f

    .line 46
    iput v0, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->loadFactor:F

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x43aa0000    # 340.0f

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->capacity:I

    .line 56
    new-instance v1, Lorg/apache/commons/digester/annotations/internal/RuleSetCache$1;

    iget v2, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->capacity:I

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache$1;-><init>(Lorg/apache/commons/digester/annotations/internal/RuleSetCache;IF)V

    iput-object v1, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->data:Ljava/util/Map;

    return-void
.end method

.method private static checkKey(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null keys not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->checkKey(Ljava/lang/Class;)V

    .line 82
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->checkKey(Ljava/lang/Class;)V

    .line 97
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;

    return-object p1
.end method

.method public put(Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->checkKey(Ljava/lang/Class;)V

    .line 110
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
