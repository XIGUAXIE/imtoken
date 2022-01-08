.class public final Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionConfidence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;,
        Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;,
        Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    }
.end annotation


# static fields
.field public static final APPEARED_AT_HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final BROADCAST_BY_FIELD_NUMBER:I = 0x6

.field public static final DEPTH_FIELD_NUMBER:I = 0x4

.field public static final LAST_BROADCASTED_AT_FIELD_NUMBER:I = 0x8

.field public static final OVERRIDING_TRANSACTION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

.field private static final serialVersionUID:J


# instance fields
.field private appearedAtHeight_:I

.field private bitField0_:I

.field private broadcastBy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private depth_:I

.field private lastBroadcastedAt_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private overridingTransaction_:Lcom/google/protobuf/ByteString;

.field private source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field private type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6735
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    .line 8127
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8128
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 7216
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    .line 7259
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    .line 6639
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->initFields()V

    .line 6642
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x10

    if-nez v1, :cond_d

    .line 6646
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    const/16 v6, 0x8

    if-eq v4, v6, :cond_9

    if-eq v4, v3, :cond_8

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_7

    const/16 v7, 0x20

    if-eq v4, v7, :cond_6

    const/16 v6, 0x32

    if-eq v4, v6, :cond_4

    const/16 v6, 0x38

    if-eq v4, v6, :cond_2

    const/16 v6, 0x40

    if-eq v4, v6, :cond_1

    .line 6652
    invoke-virtual {p0, p1, v0, p2, v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 6704
    :cond_1
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 6705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->lastBroadcastedAt_:J

    goto :goto_0

    .line 6693
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 6694
    invoke-static {v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x7

    .line 6696
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 6698
    :cond_3
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/2addr v4, v7

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 6699
    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v2, 0x10

    if-eq v4, v3, :cond_5

    .line 6686
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 6689
    :cond_5
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    sget-object v5, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6680
    :cond_6
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/2addr v4, v6

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 6681
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    goto :goto_0

    .line 6675
    :cond_7
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 6676
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 6670
    :cond_8
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 6671
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    goto/16 :goto_0

    .line 6659
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 6660
    invoke-static {v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v6

    if-nez v6, :cond_a

    .line 6662
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 6664
    :cond_a
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 6665
    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6713
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 6714
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 6711
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v3, :cond_c

    .line 6717
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    .line 6719
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6720
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->makeExtensionsImmutable()V

    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v3, :cond_e

    .line 6717
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    .line 6719
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6720
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6609
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 6615
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 7216
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    .line 7259
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    .line 6616
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 6609
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 6618
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 7216
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    .line 7259
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    .line 6618
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$10002(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 0

    .line 6609
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object p1
.end method

.method static synthetic access$10102(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I
    .locals 0

    .line 6609
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    return p1
.end method

.method static synthetic access$10200()Z
    .locals 1

    .line 6609
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9200()Z
    .locals 1

    .line 6609
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9402(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 0

    .line 6609
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p1
.end method

.method static synthetic access$9502(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I
    .locals 0

    .line 6609
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    return p1
.end method

.method static synthetic access$9602(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 6609
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9702(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I
    .locals 0

    .line 6609
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    return p1
.end method

.method static synthetic access$9800(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;
    .locals 0

    .line 6609
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9802(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 6609
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9902(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;J)J
    .locals 0

    .line 6609
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->lastBroadcastedAt_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .line 6622
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6725
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 7208
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const/4 v0, 0x0

    .line 7209
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    .line 7210
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 7211
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    .line 7212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 7213
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->lastBroadcastedAt_:J

    .line 7214
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7358
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->access$9000()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7361
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7338
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7344
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7308
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7314
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7349
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7355
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7328
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7334
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7318
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7324
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p0
.end method


# virtual methods
.method public getAppearedAtHeight()I
    .locals 1

    .line 7079
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    return v0
.end method

.method public getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1

    .line 7159
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p1
.end method

.method public getBroadcastByCount()I
    .locals 1

    .line 7153
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBroadcastByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation

    .line 7140
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastByOrBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;
    .locals 1

    .line 7166
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;

    return-object p1
.end method

.method public getBroadcastByOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7147
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6609
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6609
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .line 6626
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 7131
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    return v0
.end method

.method public getLastBroadcastedAt()J
    .locals 2

    .line 7189
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->lastBroadcastedAt_:J

    return-wide v0
.end method

.method public getOverridingTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7106
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence;",
            ">;"
        }
    .end annotation

    .line 6747
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 7261
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7265
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 7266
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 7267
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7269
    :goto_0
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 7270
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    .line 7271
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7273
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 7274
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 7275
    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7277
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 7278
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    .line 7279
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7281
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    const/4 v1, 0x6

    .line 7282
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    .line 7283
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7285
    :cond_5
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x7

    .line 7286
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 7287
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7289
    :cond_6
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 7290
    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->lastBroadcastedAt_:J

    .line 7291
    invoke-static {v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7293
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7294
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    return v0
.end method

.method public getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1

    .line 7204
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object v0
.end method

.method public getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1

    .line 7056
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 6633
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppearedAtHeight()Z
    .locals 2

    .line 7069
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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

.method public hasDepth()Z
    .locals 2

    .line 7120
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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

.method public hasLastBroadcastedAt()Z
    .locals 2

    .line 7179
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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

.method public hasOverridingTransaction()Z
    .locals 2

    .line 7094
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .line 7198
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 7046
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 6730
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 6731
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 7218
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 7222
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getBroadcastByCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 7223
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7224
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7228
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6609
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6609
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6609
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7359
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2

    .line 7368
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6609
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6609
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7363
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

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

    .line 7302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7234
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getSerializedSize()I

    .line 7235
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 7236
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7238
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7239
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7241
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7242
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7244
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 7245
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    const/4 v0, 0x0

    .line 7247
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x6

    .line 7248
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7250
    :cond_4
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x7

    .line 7251
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7253
    :cond_5
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 7254
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->lastBroadcastedAt_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7256
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
