.class public final Lorg/bitcoinj/wallet/Protos$DeterministicKey;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeterministicKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    }
.end annotation


# static fields
.field public static final CHAIN_CODE_FIELD_NUMBER:I = 0x1

.field public static final ISFOLLOWING_FIELD_NUMBER:I = 0x5

.field public static final ISSUED_SUBKEYS_FIELD_NUMBER:I = 0x3

.field public static final LOOKAHEAD_SIZE_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2

.field public static final SIGSREQUIREDTOSPEND_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chainCode_:Lcom/google/protobuf/ByteString;

.field private isFollowing_:Z

.field private issuedSubkeys_:I

.field private lookaheadSize_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1409
    new-instance v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 2295
    new-instance v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->defaultInstance:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 2296
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1316
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 1595
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedIsInitialized:B

    .line 1633
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedSerializedSize:I

    .line 1317
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->initFields()V

    .line 1320
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_d

    .line 1324
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    const/16 v6, 0xa

    if-eq v4, v6, :cond_a

    const/16 v6, 0x10

    if-eq v4, v6, :cond_8

    const/16 v7, 0x12

    if-eq v4, v7, :cond_5

    const/16 v7, 0x18

    if-eq v4, v7, :cond_4

    const/16 v7, 0x20

    if-eq v4, v7, :cond_3

    const/16 v7, 0x28

    if-eq v4, v7, :cond_2

    const/16 v7, 0x30

    if-eq v4, v7, :cond_1

    .line 1330
    invoke-virtual {p0, p1, v0, p2, v4}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 1378
    :cond_1
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    or-int/2addr v4, v6

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    .line 1379
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->sigsRequiredToSpend_:I

    goto :goto_0

    .line 1373
    :cond_2
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    .line 1374
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isFollowing_:Z

    goto :goto_0

    .line 1368
    :cond_3
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    .line 1369
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->lookaheadSize_:I

    goto :goto_0

    .line 1363
    :cond_4
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    .line 1364
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->issuedSubkeys_:I

    goto :goto_0

    .line 1350
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 1351
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-eq v5, v3, :cond_6

    .line 1352
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_6

    .line 1353
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 1356
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_7

    .line 1357
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1359
    :cond_7
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v3, :cond_9

    .line 1343
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 1346
    :cond_9
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1337
    :cond_a
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    .line 1338
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->chainCode_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1387
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1388
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1385
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v3, :cond_c

    .line 1391
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    .line 1393
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->makeExtensionsImmutable()V

    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v3, :cond_e

    .line 1391
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    .line 1393
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1287
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1293
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 1595
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedIsInitialized:B

    .line 1633
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedSerializedSize:I

    .line 1294
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 1287
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1296
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 1595
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedIsInitialized:B

    .line 1633
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedSerializedSize:I

    .line 1296
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2600()Z
    .locals 1

    .line 1287
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/bitcoinj/wallet/Protos$DeterministicKey;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1287
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->chainCode_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Ljava/util/List;
    .locals 0

    .line 1287
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2902(Lorg/bitcoinj/wallet/Protos$DeterministicKey;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1287
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3002(Lorg/bitcoinj/wallet/Protos$DeterministicKey;I)I
    .locals 0

    .line 1287
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->issuedSubkeys_:I

    return p1
.end method

.method static synthetic access$3102(Lorg/bitcoinj/wallet/Protos$DeterministicKey;I)I
    .locals 0

    .line 1287
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->lookaheadSize_:I

    return p1
.end method

.method static synthetic access$3202(Lorg/bitcoinj/wallet/Protos$DeterministicKey;Z)Z
    .locals 0

    .line 1287
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isFollowing_:Z

    return p1
.end method

.method static synthetic access$3302(Lorg/bitcoinj/wallet/Protos$DeterministicKey;I)I
    .locals 0

    .line 1287
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->sigsRequiredToSpend_:I

    return p1
.end method

.method static synthetic access$3402(Lorg/bitcoinj/wallet/Protos$DeterministicKey;I)I
    .locals 0

    .line 1287
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1

    .line 1300
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->defaultInstance:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1399
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 1588
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->chainCode_:Lcom/google/protobuf/ByteString;

    .line 1589
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    const/4 v0, 0x0

    .line 1590
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->issuedSubkeys_:I

    .line 1591
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->lookaheadSize_:I

    .line 1592
    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isFollowing_:Z

    const/4 v0, 0x1

    .line 1593
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->sigsRequiredToSpend_:I

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 1733
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->access$2400()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 1736
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->newBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1713
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1719
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1683
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1689
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1724
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1730
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1703
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1709
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1693
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1699
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p0
.end method


# virtual methods
.method public getChainCode()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1447
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->chainCode_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1287
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1287
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1

    .line 1304
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->defaultInstance:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object v0
.end method

.method public getIsFollowing()Z
    .locals 1

    .line 1559
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isFollowing_:Z

    return v0
.end method

.method public getIssuedSubkeys()I
    .locals 1

    .line 1515
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->issuedSubkeys_:I

    return v0
.end method

.method public getLookaheadSize()I
    .locals 1

    .line 1530
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->lookaheadSize_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKey;",
            ">;"
        }
    .end annotation

    .line 1421
    sget-object v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath(I)I
    .locals 1

    .line 1484
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPathCount()I
    .locals 1

    .line 1473
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

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

    .line 1462
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1635
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1639
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1640
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->chainCode_:Lcom/google/protobuf/ByteString;

    .line 1641
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 1645
    :goto_1
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1646
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    .line 1647
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 1650
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getPathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 1652
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 1653
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->issuedSubkeys_:I

    .line 1654
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1656
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 1657
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->lookaheadSize_:I

    .line 1658
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1660
    :cond_4
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1661
    iget-boolean v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isFollowing_:Z

    .line 1662
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1664
    :cond_5
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 1665
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->sigsRequiredToSpend_:I

    .line 1666
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1668
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1669
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedSerializedSize:I

    return v0
.end method

.method public getSigsRequiredToSpend()I
    .locals 1

    .line 1584
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->sigsRequiredToSpend_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1311
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasChainCode()Z
    .locals 2

    .line 1436
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

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

    .line 1546
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

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

.method public hasIssuedSubkeys()Z
    .locals 2

    .line 1501
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

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

.method public hasLookaheadSize()Z
    .locals 2

    .line 1524
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

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

.method public hasSigsRequiredToSpend()Z
    .locals 2

    .line 1573
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1404
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    const-class v2, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 1405
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1597
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1601
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->hasChainCode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1602
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedIsInitialized:B

    return v2

    .line 1605
    :cond_2
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1287
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1287
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1287
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 1734
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->newBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 2

    .line 1743
    new-instance v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1287
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->toBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1287
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->toBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 1738
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->newBuilder(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

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

    .line 1677
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getSerializedSize()I

    .line 1612
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1613
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->chainCode_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    const/4 v0, 0x0

    .line 1615
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    .line 1616
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->path_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1618
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 1619
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->issuedSubkeys_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1621
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 1622
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->lookaheadSize_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1624
    :cond_3
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 1625
    iget-boolean v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isFollowing_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1627
    :cond_4
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 1628
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->sigsRequiredToSpend_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1630
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
