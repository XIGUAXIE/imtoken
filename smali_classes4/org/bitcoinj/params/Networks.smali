.class public Lorg/bitcoinj/params/Networks;
.super Ljava/lang/Object;
.source "Networks.java"


# static fields
.field private static networks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lorg/bitcoinj/core/NetworkParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/params/Networks;->networks:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lorg/bitcoinj/core/NetworkParameters;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lorg/bitcoinj/params/Networks;->networks:Ljava/util/Set;

    return-object v0
.end method

.method public static register(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/bitcoinj/core/NetworkParameters;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 46
    sget-object v1, Lorg/bitcoinj/params/Networks;->networks:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 47
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 48
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    sput-object p0, Lorg/bitcoinj/params/Networks;->networks:Ljava/util/Set;

    return-void
.end method

.method public static register(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bitcoinj/core/NetworkParameters;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 41
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/params/Networks;->register(Ljava/util/Collection;)V

    return-void
.end method

.method public static unregister(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 4

    .line 52
    sget-object v0, Lorg/bitcoinj/params/Networks;->networks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 54
    sget-object v1, Lorg/bitcoinj/params/Networks;->networks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/NetworkParameters;

    .line 55
    invoke-virtual {v2, p0}, Lorg/bitcoinj/core/NetworkParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    sput-object p0, Lorg/bitcoinj/params/Networks;->networks:Ljava/util/Set;

    :cond_2
    return-void
.end method
