.class public final Lorg/bitcoinj/wallet/Protos$Wallet;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wallet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Wallet$Builder;,
        Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0xb

.field public static final ENCRYPTION_PARAMETERS_FIELD_NUMBER:I = 0x6

.field public static final ENCRYPTION_TYPE_FIELD_NUMBER:I = 0x5

.field public static final EXTENSION_FIELD_NUMBER:I = 0xa

.field public static final KEY_FIELD_NUMBER:I = 0x3

.field public static final KEY_ROTATION_TIME_FIELD_NUMBER:I = 0xd

.field public static final LAST_SEEN_BLOCK_HASH_FIELD_NUMBER:I = 0x2

.field public static final LAST_SEEN_BLOCK_HEIGHT_FIELD_NUMBER:I = 0xc

.field public static final LAST_SEEN_BLOCK_TIME_SECS_FIELD_NUMBER:I = 0xe

.field public static final NETWORK_IDENTIFIER_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Wallet;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAGS_FIELD_NUMBER:I = 0x10

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_SIGNERS_FIELD_NUMBER:I = 0x11

.field public static final VERSION_FIELD_NUMBER:I = 0x7

.field public static final WATCHED_SCRIPT_FIELD_NUMBER:I = 0xf

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

.field private encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation
.end field

.field private keyRotationTime_:J

.field private key_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

.field private lastSeenBlockHeight_:I

.field private lastSeenBlockTimeSecs_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private networkIdentifier_:Ljava/lang/Object;

.field private tags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private transactionSigners_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            ">;"
        }
    .end annotation
.end field

.field private transaction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I

.field private watchedScript_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14636
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 18131
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

    .line 18132
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14465
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 15264
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    .line 15371
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    .line 14466
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->initFields()V

    .line 14469
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x4000

    const/16 v4, 0x2000

    const/16 v5, 0x400

    const/16 v6, 0x40

    const/16 v7, 0x10

    const/16 v8, 0x20

    if-nez v1, :cond_10

    .line 14473
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v9

    const/4 v10, 0x1

    sparse-switch v9, :sswitch_data_0

    .line 14479
    invoke-virtual {p0, p1, v0, p2, v9}, Lorg/bitcoinj/wallet/Protos$Wallet;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    and-int/lit16 v9, v2, 0x4000

    if-eq v9, v3, :cond_1

    .line 14588
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x4000

    .line 14591
    :cond_1
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    sget-object v10, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    and-int/lit16 v9, v2, 0x2000

    if-eq v9, v4, :cond_2

    .line 14580
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x2000

    .line 14583
    :cond_2
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    sget-object v10, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v9, v2, 0x40

    if-eq v9, v6, :cond_3

    .line 14572
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 14575
    :cond_3
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    sget-object v10, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14566
    :sswitch_3
    iget v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 14567
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    goto :goto_0

    .line 14561
    :sswitch_4
    iget v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit16 v9, v9, 0x100

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 14562
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    goto/16 :goto_0

    .line 14556
    :sswitch_5
    iget v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 14557
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v9

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    goto/16 :goto_0

    .line 14550
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 14551
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit16 v10, v10, 0x80

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 14552
    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v9, v2, 0x400

    if-eq v9, v5, :cond_4

    .line 14543
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x400

    .line 14546
    :cond_4
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    sget-object v10, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14537
    :sswitch_8
    iget v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/2addr v9, v6

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 14538
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    goto/16 :goto_0

    :sswitch_9
    const/4 v9, 0x0

    .line 14525
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/2addr v10, v8

    if-ne v10, v8, :cond_5

    .line 14526
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->toBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v9

    .line 14528
    :cond_5
    sget-object v10, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    if-eqz v9, :cond_6

    .line 14530
    invoke-virtual {v9, v10}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 14531
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 14533
    :cond_6
    iget v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/2addr v9, v8

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    goto/16 :goto_0

    .line 14513
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 14514
    invoke-static {v9}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v10

    if-nez v10, :cond_7

    const/4 v10, 0x5

    .line 14516
    invoke-virtual {v0, v10, v9}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 14518
    :cond_7
    iget v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/2addr v9, v7

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 14519
    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v9, v2, 0x20

    if-eq v9, v8, :cond_8

    .line 14506
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 14509
    :cond_8
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    sget-object v10, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v9, v2, 0x10

    if-eq v9, v7, :cond_9

    .line 14498
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 14501
    :cond_9
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    sget-object v10, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14492
    :sswitch_d
    iget v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 14493
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 14486
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 14487
    iget v11, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/2addr v10, v11

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 14488
    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_f
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14599
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 14600
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 14597
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v7, :cond_a

    .line 14603
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v2, 0x20

    if-ne p2, v8, :cond_b

    .line 14606
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v2, 0x400

    if-ne p2, v5, :cond_c

    .line 14609
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x40

    if-ne p2, v6, :cond_d

    .line 14612
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    :cond_d
    and-int/lit16 p2, v2, 0x2000

    if-ne p2, v4, :cond_e

    .line 14615
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    :cond_e
    and-int/lit16 p2, v2, 0x4000

    if-ne p2, v3, :cond_f

    .line 14618
    iget-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    .line 14620
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14621
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->makeExtensionsImmutable()V

    throw p1

    :cond_10
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v7, :cond_11

    .line 14603
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v8, :cond_12

    .line 14606
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    :cond_12
    and-int/lit16 p1, v2, 0x400

    if-ne p1, v5, :cond_13

    .line 14609
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v2, 0x40

    if-ne p1, v6, :cond_14

    .line 14612
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    :cond_14
    and-int/lit16 p1, v2, 0x2000

    if-ne p1, v4, :cond_15

    .line 14615
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    :cond_15
    and-int/lit16 p1, v2, 0x4000

    if-ne p1, v3, :cond_16

    .line 14618
    iget-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    .line 14620
    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14621
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x28 -> :sswitch_a
        0x32 -> :sswitch_9
        0x38 -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x60 -> :sswitch_5
        0x68 -> :sswitch_4
        0x70 -> :sswitch_3
        0x7a -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14436
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 14442
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 15264
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    .line 15371
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    .line 14443
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 14436
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 14445
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 15264
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    .line 15371
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    .line 14445
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$17400()Z
    .locals 1

    .line 14436
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/lang/Object;
    .locals 0

    .line 14436
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17702(Lorg/bitcoinj/wallet/Protos$Wallet;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$17802(Lorg/bitcoinj/wallet/Protos$Wallet;I)I
    .locals 0

    .line 14436
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    return p1
.end method

.method static synthetic access$17902(Lorg/bitcoinj/wallet/Protos$Wallet;J)J
    .locals 0

    .line 14436
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    return-wide p1
.end method

.method static synthetic access$18000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 0

    .line 14436
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 0

    .line 14436
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18102(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 0

    .line 14436
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18202(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18302(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object p1
.end method

.method static synthetic access$18402(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p1
.end method

.method static synthetic access$18502(Lorg/bitcoinj/wallet/Protos$Wallet;I)I
    .locals 0

    .line 14436
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    return p1
.end method

.method static synthetic access$18600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 0

    .line 14436
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18700(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/lang/Object;
    .locals 0

    .line 14436
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18702(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18802(Lorg/bitcoinj/wallet/Protos$Wallet;J)J
    .locals 0

    .line 14436
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    return-wide p1
.end method

.method static synthetic access$18900(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 0

    .line 14436
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18902(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 0

    .line 14436
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$19002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14436
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19102(Lorg/bitcoinj/wallet/Protos$Wallet;I)I
    .locals 0

    .line 14436
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    return p1
.end method

.method static synthetic access$19200()Z
    .locals 1

    .line 14436
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$19300()Z
    .locals 1

    .line 14436
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$19400()Z
    .locals 1

    .line 14436
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$19500()Z
    .locals 1

    .line 14436
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$19600()Z
    .locals 1

    .line 14436
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$19700()Z
    .locals 1

    .line 14436
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1

    .line 14449
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14626
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$16900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-string v0, ""

    .line 15248
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    .line 15249
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    .line 15250
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    const-wide/16 v1, 0x0

    .line 15251
    iput-wide v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    .line 15252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    .line 15253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    .line 15254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    .line 15255
    sget-object v3, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 15256
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const/4 v3, 0x1

    .line 15257
    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    .line 15258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    .line 15259
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    .line 15260
    iput-wide v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    .line 15261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    .line 15262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 15502
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->access$17200()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 15505
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15482
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15488
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15452
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15458
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15493
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15499
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15472
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15478
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15462
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15468
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14436
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14436
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1

    .line 14453
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 15096
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    .line 15097
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15098
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 15100
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15102
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15103
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15104
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 15118
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    .line 15119
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15120
    check-cast v0, Ljava/lang/String;

    .line 15121
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15123
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    return-object v0

    .line 15126
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .line 15005
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getEncryptionParametersOrBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;
    .locals 1

    .line 15011
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1

    .line 14990
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method

.method public getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1

    .line 15066
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p1
.end method

.method public getExtensionCount()I
    .locals 1

    .line 15060
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation

    .line 15047
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;
    .locals 1

    .line 15073
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;

    return-object p1
.end method

.method public getExtensionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15054
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1

    .line 14898
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p1
.end method

.method public getKeyCount()I
    .locals 1

    .line 14892
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .line 14879
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    return-object v0
.end method

.method public getKeyOrBuilder(I)Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;
    .locals 1

    .line 14905
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;

    return-object p1
.end method

.method public getKeyOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 14886
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    return-object v0
.end method

.method public getKeyRotationTime()J
    .locals 2

    .line 15154
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    return-wide v0
.end method

.method public getLastSeenBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14832
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastSeenBlockHeight()I
    .locals 1

    .line 14855
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    return v0
.end method

.method public getLastSeenBlockTimeSecs()J
    .locals 2

    .line 14870
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    return-wide v0
.end method

.method public getNetworkIdentifier()Ljava/lang/String;
    .locals 2

    .line 14778
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    .line 14779
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14780
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14782
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14784
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14785
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14786
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 14800
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    .line 14801
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14802
    check-cast v0, Ljava/lang/String;

    .line 14803
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14805
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    return-object v0

    .line 14808
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
            "Lorg/bitcoinj/wallet/Protos$Wallet;",
            ">;"
        }
    .end annotation

    .line 14648
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 15373
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 15377
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 15379
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15381
    :goto_0
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 15382
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 15383
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    const/4 v1, 0x0

    .line 15385
    :goto_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v3, 0x3

    .line 15386
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    .line 15387
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 15389
    :goto_2
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v1, v3, :cond_4

    .line 15390
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    .line 15391
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15393
    :cond_4
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 15394
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 15395
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->getNumber()I

    move-result v5

    invoke-static {v1, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15397
    :cond_5
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    const/4 v1, 0x6

    .line 15398
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 15399
    invoke-static {v1, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15401
    :cond_6
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v5, 0x40

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_7

    const/4 v1, 0x7

    .line 15402
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    .line 15403
    invoke-static {v1, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    const/4 v1, 0x0

    .line 15405
    :goto_3
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    const/16 v5, 0xa

    .line 15406
    iget-object v6, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    .line 15407
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 15409
    :cond_8
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v5, 0x80

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_9

    const/16 v1, 0xb

    .line 15411
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15413
    :cond_9
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_a

    const/16 v1, 0xc

    .line 15414
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    .line 15415
    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15417
    :cond_a
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_b

    const/16 v1, 0xd

    .line 15418
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    .line 15419
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15421
    :cond_b
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_c

    const/16 v1, 0xe

    .line 15422
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    .line 15423
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    const/4 v1, 0x0

    .line 15425
    :goto_4
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    const/16 v4, 0xf

    .line 15426
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    .line 15427
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    .line 15429
    :goto_5
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 15430
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    .line 15431
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 15433
    :cond_e
    :goto_6
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    const/16 v1, 0x11

    .line 15434
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    .line 15435
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 15437
    :cond_f
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 15438
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    return v0
.end method

.method public getTags(I)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1

    .line 15182
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p1
.end method

.method public getTagsCount()I
    .locals 1

    .line 15176
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            ">;"
        }
    .end annotation

    .line 15163
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    return-object v0
.end method

.method public getTagsOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TagOrBuilder;
    .locals 1

    .line 15189
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TagOrBuilder;

    return-object p1
.end method

.method public getTagsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TagOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15170
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    return-object v0
.end method

.method public getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1

    .line 14933
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p1
.end method

.method public getTransactionCount()I
    .locals 1

    .line 14927
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation

    .line 14914
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;
    .locals 1

    .line 14940
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;

    return-object p1
.end method

.method public getTransactionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 14921
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionSigners(I)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1

    .line 15233
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p1
.end method

.method public getTransactionSignersCount()I
    .locals 1

    .line 15223
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionSignersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            ">;"
        }
    .end annotation

    .line 15202
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionSignersOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;
    .locals 1

    .line 15244
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;

    return-object p1
.end method

.method public getTransactionSignersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15213
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 14460
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 15038
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    return v0
.end method

.method public getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1

    .line 14968
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p1
.end method

.method public getWatchedScriptCount()I
    .locals 1

    .line 14962
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWatchedScriptList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation

    .line 14949
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    return-object v0
.end method

.method public getWatchedScriptOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;
    .locals 1

    .line 14975
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;

    return-object p1
.end method

.method public getWatchedScriptOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;",
            ">;"
        }
    .end annotation

    .line 14956
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 2

    .line 15086
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasEncryptionParameters()Z
    .locals 2

    .line 14999
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasEncryptionType()Z
    .locals 2

    .line 14984
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasKeyRotationTime()Z
    .locals 2

    .line 15142
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasLastSeenBlockHash()Z
    .locals 2

    .line 14822
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasLastSeenBlockHeight()Z
    .locals 2

    .line 14845
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasLastSeenBlockTimeSecs()Z
    .locals 2

    .line 14864
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasNetworkIdentifier()Z
    .locals 2

    .line 14768
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVersion()Z
    .locals 2

    .line 15026
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 14631
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$17000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Wallet;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 14632
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 15266
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 15270
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasNetworkIdentifier()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15271
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 15274
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 15275
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKey(I)Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$Key;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 15276
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 15280
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 15281
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15282
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 15286
    :goto_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getWatchedScriptCount()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 15287
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$Script;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 15288
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15292
    :cond_8
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasEncryptionParameters()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15293
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15294
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v2

    :cond_9
    const/4 v0, 0x0

    .line 15298
    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getExtensionCount()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 15299
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$Extension;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    .line 15300
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    .line 15304
    :goto_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTagsCount()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 15305
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTags(I)Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$Tag;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    .line 15306
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    .line 15310
    :goto_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionSignersCount()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 15311
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionSigners(I)Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_e

    .line 15312
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 15316
    :cond_f
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14436
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14436
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14436
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 15503
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2

    .line 15512
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14436
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->toBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14436
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->toBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 15507
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilder(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

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

    .line 15446
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

    .line 15322
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getSerializedSize()I

    .line 15323
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 15324
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15326
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 15327
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15329
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 15330
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 15332
    :goto_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_3

    .line 15333
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15335
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 15336
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->getNumber()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15338
    :cond_4
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x6

    .line 15339
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {p1, v1, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15341
    :cond_5
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    const/4 v1, 0x7

    .line 15342
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    invoke-virtual {p1, v1, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_6
    const/4 v1, 0x0

    .line 15344
    :goto_2
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/16 v4, 0xa

    .line 15345
    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15347
    :cond_7
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_8

    const/16 v1, 0xb

    .line 15348
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15350
    :cond_8
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    const/16 v1, 0xc

    .line 15351
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 15353
    :cond_9
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    const/16 v1, 0xd

    .line 15354
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 15356
    :cond_a
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    const/16 v1, 0xe

    .line 15357
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_b
    const/4 v1, 0x0

    .line 15359
    :goto_3
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    const/16 v3, 0xf

    .line 15360
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    .line 15362
    :goto_4
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 15363
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->tags_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 15365
    :cond_d
    :goto_5
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/16 v1, 0x11

    .line 15366
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transactionSigners_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 15368
    :cond_e
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
