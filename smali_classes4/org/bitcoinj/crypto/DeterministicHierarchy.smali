.class public Lorg/bitcoinj/crypto/DeterministicHierarchy;
.super Ljava/lang/Object;
.source "DeterministicHierarchy.java"


# static fields
.field public static final BIP32_STANDARDISATION_TIME_SECS:I = 0x519d5c00


# instance fields
.field private final keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final lastChildNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final rootPath:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->keys:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->lastChildNumbers:Ljava/util/Map;

    .line 56
    invoke-virtual {p0, p1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 57
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->rootPath:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private deriveChild(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 0

    .line 151
    invoke-static {p1, p2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-object p1
.end method

.method private getNextChildNumberToDerive(Lcom/google/common/collect/ImmutableList;Z)Lorg/bitcoinj/crypto/ChildNumber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;Z)",
            "Lorg/bitcoinj/crypto/ChildNumber;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->lastChildNumbers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/crypto/ChildNumber;

    .line 123
    new-instance v1, Lorg/bitcoinj/crypto/ChildNumber;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0, p2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    .line 124
    iget-object p2, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->lastChildNumbers:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public deriveChild(Ljava/util/List;ZZLorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;ZZ",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ")",
            "Lorg/bitcoinj/crypto/DeterministicKey;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->deriveChild(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method public deriveNextChild(Lcom/google/common/collect/ImmutableList;ZZZ)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;ZZZ)",
            "Lorg/bitcoinj/crypto/DeterministicKey;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    add-int/lit8 p3, p2, 0x1

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 114
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->getNextChildNumberToDerive(Lcom/google/common/collect/ImmutableList;Z)Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object p2

    .line 115
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->deriveChild(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1
    :try_end_0
    .catch Lorg/bitcoinj/crypto/HDDerivationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move p2, p3

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Lorg/bitcoinj/crypto/HDDerivationException;

    const-string p2, "Maximum number of child derivation attempts reached, this is probably an indication of a bug."

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/HDDerivationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;ZZ)",
            "Lorg/bitcoinj/crypto/DeterministicKey;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 85
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->rootPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 87
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->keys:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_2

    .line 89
    new-instance p3, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string p2, "relative"

    goto :goto_1

    :cond_1
    const-string p2, "absolute"

    :goto_1
    aput-object p2, v3, v1

    .line 90
    invoke-static {p1}, Lorg/bitcoinj/crypto/HDUtils;->formatPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "No key found for %s path %s."

    .line 89
    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 91
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const-string p2, "Can\'t derive the master key: nothing to derive from."

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 92
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    .line 93
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-static {p1, p2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 95
    :cond_4
    iget-object p1, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->keys:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    return-object p1
.end method

.method public getNumChildren(Lcom/google/common/collect/ImmutableList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;)I"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->lastChildNumbers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/ChildNumber;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getRootKey()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->rootPath:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public final putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v2, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->lastChildNumbers:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/crypto/DeterministicHierarchy;->keys:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
