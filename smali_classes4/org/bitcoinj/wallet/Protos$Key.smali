.class public final Lorg/bitcoinj/wallet/Protos$Key;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Key$Builder;,
        Lorg/bitcoinj/wallet/Protos$Key$Type;
    }
.end annotation


# static fields
.field public static final CREATION_TIMESTAMP_FIELD_NUMBER:I = 0x5

.field public static final DETERMINISTIC_KEY_FIELD_NUMBER:I = 0x7

.field public static final DETERMINISTIC_SEED_FIELD_NUMBER:I = 0x8

.field public static final ENCRYPTED_DATA_FIELD_NUMBER:I = 0x6

.field public static final ENCRYPTED_DETERMINISTIC_SEED_FIELD_NUMBER:I = 0x9

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x3

.field public static final SECRET_BYTES_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private creationTimestamp_:J

.field private deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

.field private deterministicSeed_:Lcom/google/protobuf/ByteString;

.field private encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

.field private encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private publicKey_:Lcom/google/protobuf/ByteString;

.field private secretBytes_:Lcom/google/protobuf/ByteString;

.field private type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2641
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Key$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    .line 4282
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Key;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

    .line 4283
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Key;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2521
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 3070
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    .line 3135
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    .line 2522
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key;->initFields()V

    .line 2525
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 2529
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_11

    const/16 v4, 0x8

    if-eq v2, v4, :cond_f

    const/16 v5, 0x12

    if-eq v2, v5, :cond_e

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_d

    const/16 v4, 0x22

    if-eq v2, v4, :cond_c

    const/16 v4, 0x28

    if-eq v2, v4, :cond_b

    const/16 v4, 0x32

    const/4 v5, 0x0

    if-eq v2, v4, :cond_8

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x42

    if-eq v2, v4, :cond_4

    const/16 v4, 0x4a

    if-eq v2, v4, :cond_1

    .line 2535
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$Key;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 2606
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 2607
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v5

    .line 2609
    :cond_2
    sget-object v2, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    if-eqz v5, :cond_3

    .line 2611
    invoke-virtual {v5, v2}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    .line 2612
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 2614
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    goto :goto_0

    .line 2600
    :cond_4
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 2601
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2588
    :cond_5
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_6

    .line 2589
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->toBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v5

    .line 2591
    :cond_6
    sget-object v2, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    if-eqz v5, :cond_7

    .line 2593
    invoke-virtual {v5, v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 2594
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 2596
    :cond_7
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    goto/16 :goto_0

    .line 2575
    :cond_8
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    .line 2576
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v5

    .line 2578
    :cond_9
    sget-object v2, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    if-eqz v5, :cond_a

    .line 2580
    invoke-virtual {v5, v2}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    .line 2581
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 2583
    :cond_a
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    goto/16 :goto_0

    .line 2569
    :cond_b
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 2570
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    goto/16 :goto_0

    .line 2563
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 2564
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 2565
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2558
    :cond_d
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 2559
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 2553
    :cond_e
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 2554
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->secretBytes_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 2542
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2543
    invoke-static {v2}, Lorg/bitcoinj/wallet/Protos$Key$Type;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v4

    if-nez v4, :cond_10

    .line 2545
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 2547
    :cond_10
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 2548
    iput-object v4, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_11
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2622
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2623
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2620
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2625
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2626
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->makeExtensionsImmutable()V

    throw p1

    .line 2625
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2626
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2492
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2498
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 3070
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    .line 3135
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    .line 2499
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 2492
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2501
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 3070
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    .line 3135
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    .line 2501
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$4000()Z
    .locals 1

    .line 2492
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Key;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4202(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 0

    .line 2492
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object p1
.end method

.method static synthetic access$4302(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2492
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->secretBytes_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4402(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 0

    .line 2492
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p1
.end method

.method static synthetic access$4502(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2492
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4600(Lorg/bitcoinj/wallet/Protos$Key;)Ljava/lang/Object;
    .locals 0

    .line 2492
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/bitcoinj/wallet/Protos$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2492
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lorg/bitcoinj/wallet/Protos$Key;J)J
    .locals 0

    .line 2492
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$4802(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 0

    .line 2492
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object p1
.end method

.method static synthetic access$4902(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2492
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5002(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 0

    .line 2492
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p1
.end method

.method static synthetic access$5102(Lorg/bitcoinj/wallet/Protos$Key;I)I
    .locals 0

    .line 2492
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1

    .line 2505
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2631
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 3060
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 3061
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->secretBytes_:Lcom/google/protobuf/ByteString;

    .line 3062
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3063
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 3064
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 3065
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    .line 3066
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 3067
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    .line 3068
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3242
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->access$3800()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3245
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3222
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3228
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3192
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3198
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3233
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3239
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3212
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3218
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3202
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3208
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p0
.end method


# virtual methods
.method public getCreationTimestamp()J
    .locals 2

    .line 2977
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2492
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2492
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1

    .line 2509
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1

    .line 2992
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object v0
.end method

.method public getDeterministicKeyOrBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;
    .locals 1

    .line 2998
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object v0
.end method

.method public getDeterministicSeed()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3023
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1

    .line 2863
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getEncryptedDataOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;
    .locals 1

    .line 2873
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1

    .line 3046
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getEncryptedDeterministicSeedOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;
    .locals 1

    .line 3056
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 2921
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    .line 2922
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2923
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2925
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2927
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2928
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2929
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2943
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    .line 2944
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2945
    check-cast v0, Ljava/lang/String;

    .line 2946
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2948
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    return-object v0

    .line 2951
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .line 2653
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2898
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSecretBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2840
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->secretBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 3137
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3141
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3142
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 3143
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3145
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3146
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->secretBytes_:Lcom/google/protobuf/ByteString;

    .line 3147
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3149
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 3150
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3151
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3153
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    const/4 v4, 0x4

    if-ne v1, v3, :cond_4

    .line 3155
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3157
    :cond_4
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 3158
    iget-wide v5, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    .line 3159
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3161
    :cond_5
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    const/4 v1, 0x6

    .line 3162
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3163
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3165
    :cond_6
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    .line 3166
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 3167
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3169
    :cond_7
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 3170
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    .line 3171
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3173
    :cond_8
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 3174
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3175
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3177
    :cond_9
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3178
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    return v0
.end method

.method public getType()Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1

    .line 2815
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2516
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCreationTimestamp()Z
    .locals 2

    .line 2966
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasDeterministicKey()Z
    .locals 2

    .line 2986
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeterministicSeed()Z
    .locals 2

    .line 3012
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEncryptedData()Z
    .locals 2

    .line 2853
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasEncryptedDeterministicSeed()Z
    .locals 2

    .line 3036
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLabel()Z
    .locals 2

    .line 2911
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasPublicKey()Z
    .locals 2

    .line 2887
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasSecretBytes()Z
    .locals 2

    .line 2829
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 2809
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

    .line 2636
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Key;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 2637
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 3072
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3076
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->hasType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3077
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    return v2

    .line 3080
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3081
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3082
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    return v2

    .line 3086
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->hasDeterministicKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3087
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3088
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    return v2

    .line 3092
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedDeterministicSeed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3093
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3094
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    return v2

    .line 3098
    :cond_5
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2492
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2492
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2492
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3243
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .line 3252
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2492
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->toBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2492
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->toBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3247
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilder(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

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

    .line 3186
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3104
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getSerializedSize()I

    .line 3105
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3106
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3108
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3109
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->secretBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3111
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 3112
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3114
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    const/4 v3, 0x4

    if-ne v0, v2, :cond_3

    .line 3115
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3117
    :cond_3
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x5

    .line 3118
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3120
    :cond_4
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    const/4 v0, 0x6

    .line 3121
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3123
    :cond_5
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    const/4 v0, 0x7

    .line 3124
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3126
    :cond_6
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    .line 3127
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3129
    :cond_7
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 3130
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3132
    :cond_8
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
