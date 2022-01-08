.class public final Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$DeterministicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chainCode_:Lcom/google/protobuf/ByteString;

.field private isFollowing_:Z

.field private issuedSubkeys_:I

.field private lookaheadSize_:I

.field private path_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sigsRequiredToSpend_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1771
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1927
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->chainCode_:Lcom/google/protobuf/ByteString;

    .line 1982
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    const/4 v0, 0x1

    .line 2239
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->sigsRequiredToSpend_:I

    .line 1772
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1777
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1927
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->chainCode_:Lcom/google/protobuf/ByteString;

    .line 1982
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    const/4 p1, 0x1

    .line 2239
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->sigsRequiredToSpend_:I

    .line 1778
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 1754
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2400()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 1754
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->create()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 1785
    new-instance v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePathIsMutable()V
    .locals 3

    .line 1984
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1985
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    .line 1986
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1760
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1781
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$2600()Z

    return-void
.end method


# virtual methods
.method public addAllPath(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;"
        }
    .end annotation

    .line 2062
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->ensurePathIsMutable()V

    .line 2063
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2065
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public addPath(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2047
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->ensurePathIsMutable()V

    .line 2048
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2049
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->build()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->build()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 2

    .line 1819
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    .line 1820
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1821
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 5

    .line 1827
    new-instance v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 1828
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1833
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->chainCode_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$2802(Lorg/bitcoinj/wallet/Protos$DeterministicKey;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1834
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 1835
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    .line 1836
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 1838
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$2902(Lorg/bitcoinj/wallet/Protos$DeterministicKey;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 1842
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->issuedSubkeys_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$3002(Lorg/bitcoinj/wallet/Protos$DeterministicKey;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 1846
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->lookaheadSize_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$3102(Lorg/bitcoinj/wallet/Protos$DeterministicKey;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 1850
    :cond_4
    iget-boolean v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->isFollowing_:Z

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$3202(Lorg/bitcoinj/wallet/Protos$DeterministicKey;Z)Z

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 1854
    :cond_5
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->sigsRequiredToSpend_:I

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$3302(Lorg/bitcoinj/wallet/Protos$DeterministicKey;I)I

    .line 1855
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$3402(Lorg/bitcoinj/wallet/Protos$DeterministicKey;I)I

    .line 1856
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clear()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clear()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clear()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clear()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 2

    .line 1789
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1790
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->chainCode_:Lcom/google/protobuf/ByteString;

    .line 1791
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 1792
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    .line 1793
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 1794
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->issuedSubkeys_:I

    and-int/lit8 v0, v0, -0x5

    .line 1795
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 1796
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->lookaheadSize_:I

    and-int/lit8 v0, v0, -0x9

    .line 1797
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 1798
    iput-boolean v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->isFollowing_:Z

    and-int/lit8 v0, v0, -0x11

    .line 1799
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v1, 0x1

    .line 1800
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->sigsRequiredToSpend_:I

    and-int/lit8 v0, v0, -0x21

    .line 1801
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChainCode()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 1976
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 1977
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getChainCode()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->chainCode_:Lcom/google/protobuf/ByteString;

    .line 1978
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsFollowing()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2233
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2234
    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->isFollowing_:Z

    .line 2235
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIssuedSubkeys()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2141
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2142
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->issuedSubkeys_:I

    .line 2143
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLookaheadSize()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2173
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2174
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->lookaheadSize_:I

    .line 2175
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPath()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2077
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    .line 2078
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 2079
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSigsRequiredToSpend()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2285
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 2286
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->sigsRequiredToSpend_:I

    .line 2287
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 2

    .line 1806
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->create()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChainCode()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1948
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->chainCode_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1

    .line 1815
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1811
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsFollowing()Z
    .locals 1

    .line 2204
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->isFollowing_:Z

    return v0
.end method

.method public getIssuedSubkeys()I
    .locals 1

    .line 2110
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->issuedSubkeys_:I

    return v0
.end method

.method public getLookaheadSize()I
    .locals 1

    .line 2158
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->lookaheadSize_:I

    return v0
.end method

.method public getPath(I)I
    .locals 1

    .line 2021
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPathCount()I
    .locals 1

    .line 2010
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1999
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSigsRequiredToSpend()I
    .locals 1

    .line 2260
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->sigsRequiredToSpend_:I

    return v0
.end method

.method public hasChainCode()Z
    .locals 2

    .line 1937
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasIsFollowing()Z
    .locals 2

    .line 2191
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIssuedSubkeys()Z
    .locals 2

    .line 2096
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLookaheadSize()Z
    .locals 2

    .line 2152
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSigsRequiredToSpend()Z
    .locals 2

    .line 2249
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1765
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    const-class v2, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 1766
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1901
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->hasChainCode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1754
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1754
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1754
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1754
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1754
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1754
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1914
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1920
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1916
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1917
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1920
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 1861
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    if-eqz v0, :cond_0

    .line 1862
    check-cast p1, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    return-object p1

    .line 1864
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 2

    .line 1870
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1871
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->hasChainCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1872
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getChainCode()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setChainCode(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 1874
    :cond_1
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$2900(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1875
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1876
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$2900(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    .line 1877
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    goto :goto_0

    .line 1879
    :cond_2
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->ensurePathIsMutable()V

    .line 1880
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->access$2900(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1882
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    .line 1884
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->hasIssuedSubkeys()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1885
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getIssuedSubkeys()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setIssuedSubkeys(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 1887
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->hasLookaheadSize()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1888
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getLookaheadSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setLookaheadSize(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 1890
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->hasIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1891
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getIsFollowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setIsFollowing(Z)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 1893
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->hasSigsRequiredToSpend()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1894
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getSigsRequiredToSpend()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setSigsRequiredToSpend(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 1896
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setChainCode(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1962
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 1963
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->chainCode_:Lcom/google/protobuf/ByteString;

    .line 1964
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1960
    throw p1
.end method

.method public setIsFollowing(Z)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2217
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 2218
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->isFollowing_:Z

    .line 2219
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public setIssuedSubkeys(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2124
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 2125
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->issuedSubkeys_:I

    .line 2126
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public setLookaheadSize(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2164
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 2165
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->lookaheadSize_:I

    .line 2166
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public setPath(II)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2033
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->ensurePathIsMutable()V

    .line 2034
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->path_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2035
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method

.method public setSigsRequiredToSpend(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 2271
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->bitField0_:I

    .line 2272
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->sigsRequiredToSpend_:I

    .line 2273
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->onChanged()V

    return-object p0
.end method
