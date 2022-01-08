.class public final Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PeerSeedProtos.java"

# interfaces
.implements Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeedsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;",
        ">;",
        "Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeedsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private peerSeeds_:Lcom/google/protobuf/ByteString;

.field private pubkey_:Lcom/google/protobuf/ByteString;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1982
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2111
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->peerSeeds_:Lcom/google/protobuf/ByteString;

    .line 2146
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2181
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->pubkey_:Lcom/google/protobuf/ByteString;

    .line 1983
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1988
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2111
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->peerSeeds_:Lcom/google/protobuf/ByteString;

    .line 2146
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2181
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->pubkey_:Lcom/google/protobuf/ByteString;

    .line 1989
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0

    .line 1965
    invoke-direct {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2600()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 1965
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->create()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 1996
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1971
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$2300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1992
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->access$2800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 2

    .line 2024
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    .line 2025
    invoke-virtual {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2026
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 5

    .line 2032
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V

    .line 2033
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2038
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->peerSeeds_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->access$3002(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 2042
    :cond_1
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->access$3102(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 2046
    :cond_2
    iget-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->pubkey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->access$3202(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2047
    invoke-static {v0, v3}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->access$3302(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;I)I

    .line 2048
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 2000
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2001
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->peerSeeds_:Lcom/google/protobuf/ByteString;

    .line 2002
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    .line 2003
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2004
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    .line 2005
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->pubkey_:Lcom/google/protobuf/ByteString;

    .line 2006
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearPeerSeeds()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 2140
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    .line 2141
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getPeerSeeds()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->peerSeeds_:Lcom/google/protobuf/ByteString;

    .line 2142
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPubkey()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 2210
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    .line 2211
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getPubkey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->pubkey_:Lcom/google/protobuf/ByteString;

    .line 2212
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSignature()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 2175
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    .line 2176
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2177
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

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

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 2

    .line 2011
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->create()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1

    .line 2020
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2016
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$2300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSeeds()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2122
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->peerSeeds_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPubkey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2192
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->pubkey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2157
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasPeerSeeds()Z
    .locals 2

    .line 2116
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPubkey()Z
    .locals 2

    .line 2186
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

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

.method public hasSignature()Z
    .locals 2

    .line 2151
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    const/4 v1, 0x2

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

    .line 1976
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$2400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    const-class v2, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    .line 1977
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2077
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->hasPeerSeeds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2081
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->hasSignature()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 2085
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->hasPubkey()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
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

    .line 1965
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1965
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

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

    .line 1965
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

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

    .line 1965
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1965
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

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

    .line 1965
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2098
    :try_start_0
    sget-object v1, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2104
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2100
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2101
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 2104
    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 2053
    instance-of v0, p1, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    if-eqz v0, :cond_0

    .line 2054
    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object p1

    return-object p1

    .line 2056
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 2062
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2063
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->hasPeerSeeds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2064
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getPeerSeeds()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->setPeerSeeds(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    .line 2066
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2067
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    .line 2069
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->hasPubkey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2070
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getPubkey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->setPubkey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    .line 2072
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setPeerSeeds(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2131
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    .line 2132
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->peerSeeds_:Lcom/google/protobuf/ByteString;

    .line 2133
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2129
    throw p1
.end method

.method public setPubkey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2201
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    .line 2202
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->pubkey_:Lcom/google/protobuf/ByteString;

    .line 2203
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2199
    throw p1
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2166
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->bitField0_:I

    .line 2167
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2168
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2164
    throw p1
.end method
