.class public final Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PeerSeedProtos.java"

# interfaces
.implements Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeedsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignedPeerSeeds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;",
            ">;"
        }
    .end annotation
.end field

.field public static final PEER_SEEDS_FIELD_NUMBER:I = 0x1

.field public static final PUBKEY_FIELD_NUMBER:I = 0x3

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private peerSeeds_:Lcom/google/protobuf/ByteString;

.field private pubkey_:Lcom/google/protobuf/ByteString;

.field private signature_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1763
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$1;

    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$1;-><init>()V

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    .line 2220
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    .line 2221
    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1704
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 1829
    iput-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedIsInitialized:B

    .line 1866
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedSerializedSize:I

    .line 1705
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->initFields()V

    .line 1708
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 1712
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 1718
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1735
    :cond_1
    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    .line 1736
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->pubkey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1730
    :cond_2
    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    .line 1731
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1725
    :cond_3
    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    .line 1726
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->peerSeeds_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1744
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1745
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1742
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1747
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1748
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->makeExtensionsImmutable()V

    throw p1

    .line 1747
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1748
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1675
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1681
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 1829
    iput-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedIsInitialized:B

    .line 1866
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedSerializedSize:I

    .line 1682
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0

    .line 1675
    invoke-direct {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1684
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 1829
    iput-byte p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedIsInitialized:B

    .line 1866
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedSerializedSize:I

    .line 1684
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    .line 1675
    sget-boolean v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1675
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->peerSeeds_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3102(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1675
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3202(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1675
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->pubkey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3302(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;I)I
    .locals 0

    .line 1675
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1

    .line 1688
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1753
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$2300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 1825
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->peerSeeds_:Lcom/google/protobuf/ByteString;

    .line 1826
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->signature_:Lcom/google/protobuf/ByteString;

    .line 1827
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->pubkey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 1949
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->access$2600()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 1952
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1929
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1935
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1899
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1905
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1940
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1946
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1919
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1925
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1909
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1915
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 1

    .line 1692
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;",
            ">;"
        }
    .end annotation

    .line 1775
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPeerSeeds()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1791
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->peerSeeds_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPubkey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1821
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->pubkey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1868
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1872
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1873
    iget-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->peerSeeds_:Lcom/google/protobuf/ByteString;

    .line 1874
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1876
    :cond_1
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1877
    iget-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->signature_:Lcom/google/protobuf/ByteString;

    .line 1878
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1880
    :cond_2
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 1881
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->pubkey_:Lcom/google/protobuf/ByteString;

    .line 1882
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1884
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1885
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedSerializedSize:I

    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1806
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1699
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasPeerSeeds()Z
    .locals 2

    .line 1785
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

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

    .line 1815
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

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

    .line 1800
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

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

    .line 1758
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$2400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    const-class v2, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    .line 1759
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1831
    iget-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1835
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->hasPeerSeeds()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1836
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedIsInitialized:B

    return v2

    .line 1839
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->hasSignature()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1840
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedIsInitialized:B

    return v2

    .line 1843
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->hasPubkey()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1844
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedIsInitialized:B

    return v2

    .line 1847
    :cond_4
    iput-byte v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1675
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 1950
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 2

    .line 1959
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;
    .locals 1

    .line 1954
    invoke-static {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->newBuilder(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1893
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getSerializedSize()I

    .line 1854
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1855
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->peerSeeds_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1857
    :cond_0
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1858
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1860
    :cond_1
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1861
    iget-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->pubkey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1863
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
