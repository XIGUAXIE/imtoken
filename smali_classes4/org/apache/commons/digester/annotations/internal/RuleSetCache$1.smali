.class Lorg/apache/commons/digester/annotations/internal/RuleSetCache$1;
.super Ljava/util/LinkedHashMap;
.source "RuleSetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/annotations/internal/RuleSetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Class<",
        "*>;",
        "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;


# direct methods
.method constructor <init>(Lorg/apache/commons/digester/annotations/internal/RuleSetCache;IF)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache$1;->this$0:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

    invoke-direct {p0, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
            ">;)Z"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache$1;->size()I

    move-result p1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
