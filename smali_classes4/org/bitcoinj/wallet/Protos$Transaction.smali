.class public final Lorg/bitcoinj/wallet/Protos$Transaction;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Transaction$Builder;,
        Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;,
        Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    }
.end annotation


# static fields
.field public static final BLOCK_HASH_FIELD_NUMBER:I = 0x8

.field public static final BLOCK_RELATIVITY_OFFSETS_FIELD_NUMBER:I = 0xb

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x9

.field public static final EXCHANGE_RATE_FIELD_NUMBER:I = 0xc

.field public static final HASH_FIELD_NUMBER:I = 0x2

.field public static final LOCK_TIME_FIELD_NUMBER:I = 0x4

.field public static final MEMO_FIELD_NUMBER:I = 0xd

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final POOL_FIELD_NUMBER:I = 0x3

.field public static final PURPOSE_FIELD_NUMBER:I = 0xa

.field public static final TRANSACTION_INPUT_FIELD_NUMBER:I = 0x6

.field public static final TRANSACTION_OUTPUT_FIELD_NUMBER:I = 0x7

.field public static final UPDATED_AT_FIELD_NUMBER:I = 0x5

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private blockHash_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private blockRelativityOffsets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

.field private exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

.field private hash_:Lcom/google/protobuf/ByteString;

.field private lockTime_:I

.field private memo_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field private purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field private transactionInput_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private transactionOutput_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private updatedAt_:J

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8605
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 11304
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Transaction;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

    .line 11305
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8430
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 9366
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    .line 9453
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    .line 8431
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->initFields()V

    .line 8434
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x40

    const/16 v4, 0x80

    const/16 v5, 0x20

    const/16 v6, 0x100

    if-nez v1, :cond_11

    .line 8438
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v7, :sswitch_data_0

    .line 8444
    invoke-virtual {p0, p1, v0, p2, v7}, Lorg/bitcoinj/wallet/Protos$Transaction;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_3

    .line 8564
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    .line 8565
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/2addr v8, v6

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 8566
    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memo_:Ljava/lang/Object;

    goto :goto_0

    .line 8552
    :sswitch_1
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_1

    .line 8553
    iget-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->toBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v8

    .line 8555
    :cond_1
    sget-object v7, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    if-eqz v8, :cond_2

    .line 8557
    invoke-virtual {v8, v7}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    .line 8558
    invoke-virtual {v8}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 8560
    :cond_2
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/2addr v7, v4

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    goto :goto_0

    .line 8538
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 8539
    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit16 v8, v2, 0x100

    if-eq v8, v6, :cond_3

    .line 8540
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_3

    .line 8541
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x100

    .line 8544
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 8545
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8547
    :cond_4
    invoke-virtual {p1, v7}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    :sswitch_3
    and-int/lit16 v7, v2, 0x100

    if-eq v7, v6, :cond_5

    .line 8531
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x100

    .line 8534
    :cond_5
    iget-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8519
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 8520
    invoke-static {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v8

    if-nez v8, :cond_6

    const/16 v8, 0xa

    .line 8522
    invoke-virtual {v0, v8, v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 8524
    :cond_6
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/2addr v7, v3

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 8525
    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto/16 :goto_0

    .line 8507
    :sswitch_5
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_7

    .line 8508
    iget-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v8

    .line 8510
    :cond_7
    sget-object v7, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    if-eqz v8, :cond_8

    .line 8512
    invoke-virtual {v8, v7}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 8513
    invoke-virtual {v8}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8515
    :cond_8
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/2addr v7, v5

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    goto/16 :goto_0

    :sswitch_6
    and-int/lit16 v7, v2, 0x80

    if-eq v7, v4, :cond_9

    .line 8499
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x80

    .line 8502
    :cond_9
    iget-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v7, v2, 0x40

    if-eq v7, v3, :cond_a

    .line 8491
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 8494
    :cond_a
    iget-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    sget-object v8, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v7, v2, 0x20

    if-eq v7, v5, :cond_b

    .line 8483
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 8486
    :cond_b
    iget-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    sget-object v8, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8477
    :sswitch_9
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 8478
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    goto/16 :goto_0

    .line 8472
    :sswitch_a
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 8473
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    goto/16 :goto_0

    .line 8461
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 8462
    invoke-static {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v8

    if-nez v8, :cond_c

    const/4 v8, 0x3

    .line 8464
    invoke-virtual {v0, v8, v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 8466
    :cond_c
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 8467
    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto/16 :goto_0

    .line 8456
    :sswitch_c
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 8457
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 8451
    :sswitch_d
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/2addr v7, v9

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 8452
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_e
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 8574
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 8575
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 8572
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x20

    if-ne p2, v5, :cond_d

    .line 8578
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x40

    if-ne p2, v3, :cond_e

    .line 8581
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    :cond_e
    and-int/lit16 p2, v2, 0x80

    if-ne p2, v4, :cond_f

    .line 8584
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    :cond_f
    and-int/lit16 p2, v2, 0x100

    if-ne p2, v6, :cond_10

    .line 8587
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 8589
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8590
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->makeExtensionsImmutable()V

    throw p1

    :cond_11
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v5, :cond_12

    .line 8578
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v2, 0x40

    if-ne p1, v3, :cond_13

    .line 8581
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    :cond_13
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v4, :cond_14

    .line 8584
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    :cond_14
    and-int/lit16 p1, v2, 0x100

    if-ne p1, v6, :cond_15

    .line 8587
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 8589
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8590
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x12 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x28 -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8401
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 8407
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 9366
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    .line 9453
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    .line 8408
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 8401
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 8410
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 9366
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    .line 9453
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    .line 8410
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$10800()Z
    .locals 1

    .line 8401
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Transaction;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11002(Lorg/bitcoinj/wallet/Protos$Transaction;I)I
    .locals 0

    .line 8401
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    return p1
.end method

.method static synthetic access$11102(Lorg/bitcoinj/wallet/Protos$Transaction;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$11202(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p1
.end method

.method static synthetic access$11302(Lorg/bitcoinj/wallet/Protos$Transaction;I)I
    .locals 0

    .line 8401
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    return p1
.end method

.method static synthetic access$11402(Lorg/bitcoinj/wallet/Protos$Transaction;J)J
    .locals 0

    .line 8401
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    return-wide p1
.end method

.method static synthetic access$11500(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;
    .locals 0

    .line 8401
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11502(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11600(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;
    .locals 0

    .line 8401
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11602(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;
    .locals 0

    .line 8401
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11702(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;
    .locals 0

    .line 8401
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11802(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11902(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p1
.end method

.method static synthetic access$12002(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p1
.end method

.method static synthetic access$12102(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p1
.end method

.method static synthetic access$12200(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/lang/Object;
    .locals 0

    .line 8401
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memo_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12202(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8401
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12302(Lorg/bitcoinj/wallet/Protos$Transaction;I)I
    .locals 0

    .line 8401
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    return p1
.end method

.method static synthetic access$12400()Z
    .locals 1

    .line 8401
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Transaction;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12500()Z
    .locals 1

    .line 8401
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Transaction;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1

    .line 8414
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8595
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    .line 9352
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    .line 9353
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    .line 9354
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 9355
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    const-wide/16 v0, 0x0

    .line 9356
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    .line 9357
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    .line 9358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    .line 9359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    .line 9360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 9361
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 9362
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 9363
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    const-string v0, ""

    .line 9364
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memo_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 9586
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->access$10600()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 9589
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9566
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9572
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9536
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9542
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9577
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9583
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9556
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9562
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9546
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9552
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p0
.end method


# virtual methods
.method public getBlockHash(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9188
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getBlockHashCount()I
    .locals 1

    .line 9177
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlockHashList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 9166
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    return-object v0
.end method

.method public getBlockRelativityOffsets(I)I
    .locals 1

    .line 9210
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getBlockRelativityOffsetsCount()I
    .locals 1

    .line 9204
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlockRelativityOffsetsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9198
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    return-object v0
.end method

.method public getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .line 9233
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public getConfidenceOrBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;
    .locals 1

    .line 9243
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8401
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8401
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1

    .line 8418
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public getExchangeRate()Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1

    .line 9281
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object v0
.end method

.method public getExchangeRateOrBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;
    .locals 1

    .line 9291
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object v0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9006
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .line 9058
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    return v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 2

    .line 9316
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memo_:Ljava/lang/Object;

    .line 9317
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9318
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 9320
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9322
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9323
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9324
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memo_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9339
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memo_:Ljava/lang/Object;

    .line 9340
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9341
    check-cast v0, Ljava/lang/String;

    .line 9342
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9344
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memo_:Ljava/lang/Object;

    return-object v0

    .line 9347
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
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation

    .line 8617
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    .line 9035
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object v0
.end method

.method public getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1

    .line 9258
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 9455
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9459
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 9460
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    .line 9461
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9463
    :goto_0
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 9464
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    .line 9465
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 9467
    :cond_2
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 9468
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 9469
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getNumber()I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 9471
    :cond_3
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 9472
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    .line 9473
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 9475
    :cond_4
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    .line 9476
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    .line 9477
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    const/4 v3, 0x0

    .line 9479
    :goto_1
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x6

    .line 9480
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    .line 9481
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 9483
    :goto_2
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    const/4 v4, 0x7

    .line 9484
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    .line 9485
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9489
    :goto_3
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 9490
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    .line 9491
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/ByteString;

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    add-int/2addr v0, v4

    .line 9494
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockHashList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 9496
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_9

    const/16 v3, 0x9

    .line 9497
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 9498
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 9500
    :cond_9
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_a

    const/16 v3, 0xa

    .line 9501
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 9502
    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    const/4 v3, 0x0

    .line 9506
    :goto_4
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 9507
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 9508
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    add-int/2addr v0, v3

    .line 9511
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockRelativityOffsetsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 9513
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    .line 9514
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 9515
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9517
    :cond_c
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    .line 9519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9521
    :cond_d
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9522
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    return v0
.end method

.method public getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1

    .line 9109
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p1
.end method

.method public getTransactionInputCount()I
    .locals 1

    .line 9103
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionInputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 9090
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionInputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;
    .locals 1

    .line 9116
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;

    return-object p1
.end method

.method public getTransactionInputOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9097
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1

    .line 9144
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p1
.end method

.method public getTransactionOutputCount()I
    .locals 1

    .line 9138
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionOutputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 9125
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionOutputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;
    .locals 1

    .line 9151
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;

    return-object p1
.end method

.method public getTransactionOutputOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9132
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 8425
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .line 9081
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 8991
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 2

    .line 9223
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

.method public hasExchangeRate()Z
    .locals 2

    .line 9271
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

.method public hasHash()Z
    .locals 2

    .line 9000
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

.method public hasLockTime()Z
    .locals 2

    .line 9048
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

.method public hasMemo()Z
    .locals 2

    .line 9305
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

.method public hasPool()Z
    .locals 2

    .line 9022
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

.method public hasPurpose()Z
    .locals 2

    .line 9252
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

.method public hasUpdatedAt()Z
    .locals 2

    .line 9071
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 8981
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

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

    .line 8600
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Transaction;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 8601
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 9368
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 9372
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasVersion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9373
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    return v2

    .line 9376
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasHash()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9377
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    return v2

    :cond_3
    const/4 v0, 0x0

    .line 9380
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionInputCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 9381
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9382
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 9386
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionOutputCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 9387
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 9388
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9392
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9393
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 9394
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    return v2

    .line 9398
    :cond_8
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasExchangeRate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9399
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getExchangeRate()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 9400
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    return v2

    .line 9404
    :cond_9
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8401
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8401
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8401
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 9587
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .line 9596
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8401
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->toBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8401
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->toBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 9591
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilder(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

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

    .line 9530
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9410
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getSerializedSize()I

    .line 9411
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 9412
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9414
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 9415
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9417
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 9418
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9420
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 9421
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 9423
    :cond_3
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 9424
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9426
    :goto_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    const/4 v3, 0x6

    .line 9427
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 9429
    :goto_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    const/4 v3, 0x7

    .line 9430
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 9432
    :goto_2
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 9433
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9435
    :cond_7
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    .line 9436
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9438
    :cond_8
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xa

    .line 9439
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9441
    :cond_9
    :goto_3
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xb

    .line 9442
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 9444
    :cond_a
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    .line 9445
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9447
    :cond_b
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    .line 9448
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9450
    :cond_c
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
