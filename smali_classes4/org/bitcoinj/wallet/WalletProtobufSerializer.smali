.class public Lorg/bitcoinj/wallet/WalletProtobufSerializer;
.super Ljava/lang/Object;
.source "WalletProtobufSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;
    }
.end annotation


# static fields
.field public static final CURRENT_WALLET_VERSION:I

.field private static final WALLET_SIZE_LIMIT:I = 0x20000000

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final factory:Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;

.field private keyChainFactory:Lorg/bitcoinj/wallet/KeyChainFactory;

.field private requireMandatoryExtensions:Z

.field protected txMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/ByteString;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    .line 74
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getVersion()I

    move-result v0

    sput v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->CURRENT_WALLET_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    new-instance v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;-><init>(Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->requireMandatoryExtensions:Z

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    .line 100
    iput-object p1, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->factory:Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;

    .line 101
    new-instance p1, Lorg/bitcoinj/wallet/DefaultKeyChainFactory;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/DefaultKeyChainFactory;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->keyChainFactory:Lorg/bitcoinj/wallet/KeyChainFactory;

    return-void
.end method

.method public static byteStringToHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/core/Sha256Hash;
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method private connectTransactionOutputs(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/WalletTransaction;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    .line 680
    sget-object v1, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 694
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown transaction pool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :pswitch_0
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    goto :goto_0

    .line 684
    :pswitch_1
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    goto :goto_0

    .line 683
    :pswitch_2
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    goto :goto_0

    .line 682
    :pswitch_3
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    goto :goto_0

    .line 681
    :pswitch_4
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 696
    :goto_1
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 697
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionOutput;

    .line 698
    invoke-virtual {p2, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v5

    .line 699
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasSpentByTransactionHash()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 700
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 701
    iget-object v7, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bitcoinj/core/Transaction;

    if-eqz v7, :cond_0

    .line 706
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionIndex()I

    move-result v5

    int-to-long v5, v5

    .line 707
    invoke-virtual {v7, v5, v6}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/TransactionInput;

    .line 708
    invoke-virtual {v5, v4}, Lorg/bitcoinj/core/TransactionInput;->connect(Lorg/bitcoinj/core/TransactionOutput;)V

    goto :goto_2

    .line 703
    :cond_0
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 704
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v6}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Could not connect %s to %s"

    .line 703
    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 712
    :cond_2
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 713
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object p2

    .line 714
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v2

    .line 715
    invoke-direct {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->readConfidence(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/core/TransactionConfidence;)V

    .line 718
    :cond_3
    new-instance p1, Lorg/bitcoinj/wallet/WalletTransaction;

    invoke-direct {p1, v1, v0}, Lorg/bitcoinj/wallet/WalletTransaction;-><init>(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getProtoPool(Lorg/bitcoinj/wallet/WalletTransaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    .line 319
    sget-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/WalletTransaction;->getPool()Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 323
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unreachable"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 322
    :cond_1
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0

    .line 321
    :cond_2
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0

    .line 320
    :cond_3
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0
.end method

.method public static hashToByteString(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 372
    invoke-virtual {p0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static isWallet(Ljava/io/InputStream;)Z
    .locals 3

    const/4 v0, 0x0

    .line 803
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    .line 804
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 805
    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p0

    .line 809
    invoke-static {p0}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private loadExtensions(Lorg/bitcoinj/wallet/Wallet;[Lorg/bitcoinj/wallet/WalletExtension;Lorg/bitcoinj/wallet/Protos$Wallet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 561
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 562
    invoke-interface {v3}, Lorg/bitcoinj/wallet/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 566
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getExtensionList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bitcoinj/wallet/Protos$Extension;

    .line 567
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Extension;->getId()Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/WalletExtension;

    if-nez v2, :cond_3

    .line 570
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Extension;->getMandatory()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 571
    iget-boolean p3, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->requireMandatoryExtensions:Z

    if-nez p3, :cond_2

    .line 574
    sget-object p3, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v2, "Unknown extension in wallet {}, ignoring"

    invoke-interface {p3, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 572
    :cond_2
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown mandatory extension in wallet: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 577
    :cond_3
    sget-object v3, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v4, "Loading wallet extension {}"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    :try_start_0
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Extension;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/bitcoinj/wallet/Wallet;->deserializeExtension(Lorg/bitcoinj/wallet/WalletExtension;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 581
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Extension;->getMandatory()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->requireMandatoryExtensions:Z

    if-nez p3, :cond_4

    goto :goto_1

    .line 582
    :cond_4
    sget-object p1, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string p2, "Error whilst reading mandatory extension {}, failing to read wallet"

    invoke-interface {p1, p2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not parse mandatory extension in wallet: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method private static makeTxProto(Lorg/bitcoinj/wallet/WalletTransaction;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 6

    .line 232
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/WalletTransaction;->getTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    .line 233
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v1

    .line 235
    invoke-static {p0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->getProtoPool(Lorg/bitcoinj/wallet/WalletTransaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setPool(Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p0

    .line 236
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->hashToByteString(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p0

    .line 237
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getVersion()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0, v3}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setVersion(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 239
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setUpdatedAt(J)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 243
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    .line 244
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-virtual {v1, p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setLockTime(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 248
    :cond_1
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    .line 249
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v3

    .line 250
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getScriptBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v3

    .line 251
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    invoke-static {v4}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->hashToByteString(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setTransactionOutPointHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v3

    .line 252
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setTransactionOutPointIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v3

    .line 253
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->hasSequence()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getSequenceNumber()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setSequence(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 255
    :cond_2
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 256
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    iget-wide v4, v2, Lorg/bitcoinj/core/Coin;->value:J

    invoke-virtual {v3, v4, v5}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 257
    :cond_3
    invoke-virtual {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->addTransactionInput(Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 262
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v3

    .line 263
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v3

    .line 264
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v4

    iget-wide v4, v4, Lorg/bitcoinj/core/Coin;->value:J

    invoke-virtual {v3, v4, v5}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v3

    .line 265
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 267
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    .line 268
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 269
    invoke-static {v4}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->hashToByteString(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setSpentByTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v4

    .line 270
    invoke-virtual {v4, v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setSpentByTransactionIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 272
    :cond_5
    invoke-virtual {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->addTransactionOutput(Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    goto :goto_1

    .line 276
    :cond_6
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getAppearsInHashes()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 278
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Sha256Hash;

    invoke-static {v3}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->hashToByteString(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->addBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 280
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->addBlockRelativityOffsets(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    goto :goto_2

    .line 284
    :cond_7
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->hasConfidence()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 285
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p0

    .line 286
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v2

    .line 287
    invoke-static {v1, p0, v2}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->writeConfidence(Lorg/bitcoinj/wallet/Protos$Transaction$Builder;Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;)V

    .line 291
    :cond_8
    sget-object p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getPurpose()Lorg/bitcoinj/core/Transaction$Purpose;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction$Purpose;->ordinal()I

    move-result v2

    aget p0, p0, v2

    packed-switch p0, :pswitch_data_0

    .line 300
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "New tx purpose serialization not implemented."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 298
    :pswitch_0
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->RAISE_FEE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_3

    .line 297
    :pswitch_1
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_STUB:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_3

    .line 296
    :pswitch_2
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_PLEDGE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_3

    .line 295
    :pswitch_3
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_CLAIM:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_3

    .line 294
    :pswitch_4
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_3

    .line 293
    :pswitch_5
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_3

    .line 292
    :pswitch_6
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 302
    :goto_3
    invoke-virtual {v1, p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setPurpose(Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 304
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getExchangeRate()Lorg/bitcoinj/utils/ExchangeRate;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 306
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->newBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/bitcoinj/utils/ExchangeRate;->coin:Lorg/bitcoinj/core/Coin;

    iget-wide v3, v3, Lorg/bitcoinj/core/Coin;->value:J

    .line 307
    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->setCoinValue(J)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    iget-wide v3, v3, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->setFiatValue(J)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v2

    iget-object p0, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    iget-object p0, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    .line 308
    invoke-virtual {v2, p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->setFiatCurrencyCode(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object p0

    .line 309
    invoke-virtual {v1, p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setExchangeRate(Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 312
    :cond_9
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getMemo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 313
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getMemo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setMemo(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 315
    :cond_a
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseToProto(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    invoke-static {p0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    const/high16 v0, 0x20000000

    .line 597
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->setSizeLimit(I)I

    .line 598
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object p0

    return-object p0
.end method

.method private static populateExtensions(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/wallet/Protos$Wallet$Builder;)V
    .locals 3

    .line 222
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/WalletExtension;

    .line 223
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v1

    .line 224
    invoke-interface {v0}, Lorg/bitcoinj/wallet/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setId(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 225
    invoke-interface {v0}, Lorg/bitcoinj/wallet/WalletExtension;->isWalletExtensionMandatory()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setMandatory(Z)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 226
    invoke-interface {v0}, Lorg/bitcoinj/wallet/WalletExtension;->serializeWalletExtension()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 227
    invoke-virtual {p1, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addExtension(Lorg/bitcoinj/wallet/Protos$Extension$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readConfidence(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/core/TransactionConfidence;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 726
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    sget-object p1, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unknown confidence type for tx {}"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 731
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    .line 741
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    goto :goto_0

    .line 737
    :cond_1
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    goto :goto_0

    .line 736
    :cond_2
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    goto :goto_0

    .line 735
    :cond_3
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    goto :goto_0

    .line 733
    :cond_4
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    goto :goto_0

    .line 732
    :cond_5
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 743
    :goto_0
    invoke-virtual {p4, v0}, Lorg/bitcoinj/core/TransactionConfidence;->setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V

    .line 744
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasAppearedAtHeight()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 745
    invoke-virtual {p4}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq v0, v3, :cond_6

    .line 746
    sget-object p1, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Have appearedAtHeight but not BUILDING for tx {}"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 749
    :cond_6
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getAppearedAtHeight()I

    move-result v0

    invoke-virtual {p4, v0}, Lorg/bitcoinj/core/TransactionConfidence;->setAppearedAtChainHeight(I)V

    .line 751
    :cond_7
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasDepth()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 752
    invoke-virtual {p4}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq v0, v3, :cond_8

    .line 753
    sget-object p1, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Have depth but not BUILDING for tx {}"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 756
    :cond_8
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDepth()I

    move-result v0

    invoke-virtual {p4, v0}, Lorg/bitcoinj/core/TransactionConfidence;->setDepthInBlocks(I)V

    .line 758
    :cond_9
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasOverridingTransaction()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 759
    invoke-virtual {p4}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq v0, v3, :cond_a

    .line 760
    sget-object p1, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Have overridingTransaction but not OVERRIDDEN for tx {}"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 763
    :cond_a
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    .line 764
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getOverridingTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    if-nez v0, :cond_b

    .line 766
    sget-object p1, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Have overridingTransaction that is not in wallet for tx {}"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 769
    :cond_b
    invoke-virtual {p4, v0}, Lorg/bitcoinj/core/TransactionConfidence;->setOverridingTransaction(Lorg/bitcoinj/core/Transaction;)V

    .line 771
    :cond_c
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getBroadcastByList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .line 774
    :try_start_0
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getPort()I

    move-result v4

    .line 779
    new-instance v5, Lorg/bitcoinj/core/PeerAddress;

    invoke-direct {v5, p1, v3, v4}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetAddress;I)V

    .line 780
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getServices()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/bitcoinj/core/PeerAddress;->setServices(Ljava/math/BigInteger;)V

    .line 781
    invoke-virtual {p4, v5}, Lorg/bitcoinj/core/TransactionConfidence;->markBroadcastBy(Lorg/bitcoinj/core/PeerAddress;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    .line 776
    new-instance p2, Lorg/bitcoinj/wallet/UnreadableWalletException;

    const-string p3, "Peer IP address does not have the right length"

    invoke-direct {p2, p3, p1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 783
    :cond_d
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasLastBroadcastedAt()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 784
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getLastBroadcastedAt()J

    move-result-wide v3

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p1}, Lorg/bitcoinj/core/TransactionConfidence;->setLastBroadcastedAt(Ljava/util/Date;)V

    .line 785
    :cond_e
    sget-object p1, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_10

    if-eq p1, v1, :cond_f

    .line 790
    sget-object p1, Lorg/bitcoinj/core/TransactionConfidence$Source;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {p4, p1}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    goto :goto_2

    .line 787
    :cond_f
    sget-object p1, Lorg/bitcoinj/core/TransactionConfidence$Source;->NETWORK:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {p4, p1}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    goto :goto_2

    .line 786
    :cond_10
    sget-object p1, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {p4, p1}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    :goto_2
    return-void
.end method

.method private readTransaction(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 602
    new-instance v6, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v6, p2}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 604
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getVersion()I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setVersion(I)V

    .line 606
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasUpdatedAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUpdatedAt()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setUpdateTime(Ljava/util/Date;)V

    .line 610
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionOutputList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .line 611
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    .line 612
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 613
    new-instance v3, Lorg/bitcoinj/core/TransactionOutput;

    invoke-direct {v3, p2, v6, v2, v1}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    .line 614
    invoke-virtual {v6, v3}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionInputList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide v8, 0xffffffffL

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .line 618
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    .line 619
    new-instance v4, Lorg/bitcoinj/core/TransactionOutPoint;

    .line 620
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointIndex()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v8

    .line 621
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointHash()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-direct {v4, p2, v0, v1, v2}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    .line 623
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v5, v0

    .line 624
    new-instance v11, Lorg/bitcoinj/core/TransactionInput;

    move-object v0, v11

    move-object v1, p2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/core/Coin;)V

    .line 625
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasSequence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getSequence()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v8

    invoke-virtual {v11, v0, v1}, Lorg/bitcoinj/core/TransactionInput;->setSequenceNumber(J)V

    .line 627
    :cond_3
    invoke-virtual {v6, v11}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 630
    :goto_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockHashCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 631
    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockHash(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 633
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockRelativityOffsetsCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 634
    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockRelativityOffsets(I)I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 635
    :goto_4
    invoke-static {v1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v6, v1, v2}, Lorg/bitcoinj/core/Transaction;->addBlockAppearance(Lorg/bitcoinj/core/Sha256Hash;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 638
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasLockTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 639
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getLockTime()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v8

    invoke-virtual {v6, v0, v1}, Lorg/bitcoinj/core/Transaction;->setLockTime(J)V

    .line 642
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasPurpose()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 643
    sget-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 651
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "New purpose serialization not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 650
    :pswitch_0
    sget-object v0, Lorg/bitcoinj/core/Transaction$Purpose;->RAISE_FEE:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    goto :goto_5

    .line 649
    :pswitch_1
    sget-object v0, Lorg/bitcoinj/core/Transaction$Purpose;->ASSURANCE_CONTRACT_STUB:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    goto :goto_5

    .line 648
    :pswitch_2
    sget-object v0, Lorg/bitcoinj/core/Transaction$Purpose;->ASSURANCE_CONTRACT_PLEDGE:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    goto :goto_5

    .line 647
    :pswitch_3
    sget-object v0, Lorg/bitcoinj/core/Transaction$Purpose;->ASSURANCE_CONTRACT_CLAIM:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    goto :goto_5

    .line 646
    :pswitch_4
    sget-object v0, Lorg/bitcoinj/core/Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    goto :goto_5

    .line 645
    :pswitch_5
    sget-object v0, Lorg/bitcoinj/core/Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    goto :goto_5

    .line 644
    :pswitch_6
    sget-object v0, Lorg/bitcoinj/core/Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    goto :goto_5

    .line 655
    :cond_8
    sget-object v0, Lorg/bitcoinj/core/Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    .line 658
    :goto_5
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasExchangeRate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 659
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getExchangeRate()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    .line 660
    new-instance v1, Lorg/bitcoinj/utils/ExchangeRate;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getCoinValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    .line 661
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getFiatCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getFiatValue()J

    move-result-wide v4

    .line 660
    invoke-static {v3, v4, v5}, Lorg/bitcoinj/utils/Fiat;->valueOf(Ljava/lang/String;J)Lorg/bitcoinj/utils/Fiat;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/utils/ExchangeRate;-><init>(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/utils/Fiat;)V

    invoke-virtual {v6, v1}, Lorg/bitcoinj/core/Transaction;->setExchangeRate(Lorg/bitcoinj/utils/ExchangeRate;)V

    .line 664
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 665
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->setMemo(Ljava/lang/String;)V

    .line 668
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 669
    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 671
    iget-object p2, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 673
    iget-object p2, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 672
    :cond_b
    new-instance p2, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wallet contained duplicate transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 670
    :cond_c
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    aput-object v3, v2, p2

    const/4 p2, 0x1

    aput-object v0, v2, p2

    const-string p2, "Transaction did not deserialize completely: %s vs %s"

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeConfidence(Lorg/bitcoinj/wallet/Protos$Transaction$Builder;Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;)V
    .locals 5

    .line 332
    monitor-enter p1

    .line 333
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setType(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 334
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v0, v1, :cond_0

    .line 335
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getAppearedAtChainHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setAppearedAtHeight(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 336
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setDepth(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 338
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v0, v1, :cond_1

    .line 341
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getOverridingTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getOverridingTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->hashToByteString(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setOverridingTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 346
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getSource()Lorg/bitcoinj/core/TransactionConfidence$Source;

    move-result-object v0

    .line 347
    sget-object v1, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$TransactionConfidence$Source:[I

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence$Source;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 353
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {p2, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    goto :goto_0

    .line 349
    :cond_2
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {p2, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    goto :goto_0

    .line 348
    :cond_3
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {p2, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 355
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getBroadcastBy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/PeerAddress;

    .line 358
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v2

    .line 359
    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setIpAddress(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v2

    .line 360
    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setPort(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v2

    .line 361
    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerAddress;->getServices()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setServices(J)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    .line 363
    invoke-virtual {p2, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->addBroadcastBy(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    goto :goto_1

    .line 365
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getLastBroadcastedAt()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 367
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setLastBroadcastedAt(J)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 368
    :cond_5
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    return-void

    :catchall_0
    move-exception p0

    .line 355
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public readWallet(Ljava/io/InputStream;Z[Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/Wallet;
    .locals 3
    .param p3    # [Lorg/bitcoinj/wallet/WalletExtension;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    const-string v0, "Could not parse input stream to protobuf"

    .line 412
    :try_start_0
    invoke-static {p1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->parseToProto(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {p0, v2, p3, p1, p2}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->readWallet(Lorg/bitcoinj/core/NetworkParameters;[Lorg/bitcoinj/wallet/WalletExtension;Lorg/bitcoinj/wallet/Protos$Wallet;Z)Lorg/bitcoinj/wallet/Wallet;

    move-result-object p1

    return-object p1

    .line 416
    :cond_0
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown network parameters ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 423
    new-instance p2, Lorg/bitcoinj/wallet/UnreadableWalletException;

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 421
    new-instance p2, Lorg/bitcoinj/wallet/UnreadableWalletException;

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 419
    new-instance p2, Lorg/bitcoinj/wallet/UnreadableWalletException;

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs readWallet(Ljava/io/InputStream;[Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/Wallet;
    .locals 1
    .param p2    # [Lorg/bitcoinj/wallet/WalletExtension;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, p1, v0, p2}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->readWallet(Ljava/io/InputStream;Z[Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/Wallet;

    move-result-object p1

    return-object p1
.end method

.method public readWallet(Lorg/bitcoinj/core/NetworkParameters;[Lorg/bitcoinj/wallet/WalletExtension;Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Wallet;
    .locals 1
    .param p2    # [Lorg/bitcoinj/wallet/WalletExtension;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 440
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->readWallet(Lorg/bitcoinj/core/NetworkParameters;[Lorg/bitcoinj/wallet/WalletExtension;Lorg/bitcoinj/wallet/Protos$Wallet;Z)Lorg/bitcoinj/wallet/Wallet;

    move-result-object p1

    return-object p1
.end method

.method public readWallet(Lorg/bitcoinj/core/NetworkParameters;[Lorg/bitcoinj/wallet/WalletExtension;Lorg/bitcoinj/wallet/Protos$Wallet;Z)Lorg/bitcoinj/wallet/Wallet;
    .locals 10
    .param p2    # [Lorg/bitcoinj/wallet/WalletExtension;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 461
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getVersion()I

    move-result v0

    sget v1, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->CURRENT_WALLET_VERSION:I

    if-gt v0, v1, :cond_e

    .line 463
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 468
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasEncryptionParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    .line 470
    new-instance v1, Lorg/bitcoinj/crypto/KeyCrypterScrypt;

    invoke-direct {v1, v0}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;-><init>(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)V

    .line 471
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->keyChainFactory:Lorg/bitcoinj/wallet/KeyChainFactory;

    invoke-static {p1, v0, v1, v2}, Lorg/bitcoinj/wallet/KeyChainGroup;->fromProtobufEncrypted(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/wallet/KeyChainFactory;)Lorg/bitcoinj/wallet/KeyChainGroup;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->keyChainFactory:Lorg/bitcoinj/wallet/KeyChainFactory;

    invoke-static {p1, v0, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->fromProtobufUnencrypted(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/wallet/KeyChainFactory;)Lorg/bitcoinj/wallet/KeyChainGroup;

    move-result-object v0

    .line 475
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->factory:Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;

    invoke-interface {v1, p1, v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;->create(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)Lorg/bitcoinj/wallet/Wallet;

    move-result-object v0

    .line 477
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 478
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getWatchedScriptList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x3e8

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/Protos$Script;

    .line 480
    :try_start_0
    new-instance v6, Lorg/bitcoinj/script/Script;

    .line 481
    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$Script;->getProgram()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    .line 482
    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$Script;->getCreationTimestamp()J

    move-result-wide v8

    div-long/2addr v8, v4

    invoke-direct {v6, v7, v8, v9}, Lorg/bitcoinj/script/Script;-><init>([BJ)V

    .line 483
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 485
    :catch_0
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    const-string p2, "Unparseable script in wallet"

    invoke-direct {p1, p2}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 489
    :cond_1
    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Wallet;->addWatchedScripts(Ljava/util/List;)I

    .line 491
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Wallet;->setDescription(Ljava/lang/String;)V

    :cond_2
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_3

    .line 497
    invoke-virtual {v0, v2}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHash(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 498
    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHeight(I)V

    const-wide/16 v1, 0x0

    .line 499
    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenTimeSecs(J)V

    goto/16 :goto_6

    .line 502
    :cond_3
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/Protos$Transaction;

    .line 503
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->readTransaction(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/core/NetworkParameters;)V

    goto :goto_2

    .line 507
    :cond_4
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/Protos$Transaction;

    .line 508
    invoke-direct {p0, p1, v3}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->connectTransactionOutputs(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/WalletTransaction;

    move-result-object v3

    .line 509
    invoke-virtual {v0, v3}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction;)V

    goto :goto_3

    .line 513
    :cond_5
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockHash()Z

    move-result p1

    if-nez p1, :cond_6

    .line 514
    invoke-virtual {v0, v2}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHash(Lorg/bitcoinj/core/Sha256Hash;)V

    goto :goto_4

    .line 516
    :cond_6
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHash(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 518
    :goto_4
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockHeight()Z

    move-result p1

    if-nez p1, :cond_7

    .line 519
    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHeight(I)V

    goto :goto_5

    .line 521
    :cond_7
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHeight(I)V

    .line 524
    :goto_5
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockTimeSecs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenTimeSecs(J)V

    .line 526
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasKeyRotationTime()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 527
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyRotationTime()J

    move-result-wide v1

    mul-long v1, v1, v4

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Wallet;->setKeyRotationTime(Ljava/util/Date;)V

    :cond_8
    :goto_6
    if-eqz p2, :cond_9

    goto :goto_7

    :cond_9
    const/4 p1, 0x0

    new-array p2, p1, [Lorg/bitcoinj/wallet/WalletExtension;

    .line 531
    :goto_7
    invoke-direct {p0, v0, p2, p3}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->loadExtensions(Lorg/bitcoinj/wallet/Wallet;[Lorg/bitcoinj/wallet/WalletExtension;Lorg/bitcoinj/wallet/Protos$Wallet;)V

    .line 533
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTagsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$Tag;

    .line 534
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Tag;->getTag()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Tag;->getData()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {v0, p4, p2}, Lorg/bitcoinj/wallet/Wallet;->setTag(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    goto :goto_8

    .line 537
    :cond_a
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionSignersList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    .line 539
    :try_start_1
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getClassName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    .line 540
    invoke-virtual {p4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bitcoinj/signers/TransactionSigner;

    .line 541
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {p4, v1}, Lorg/bitcoinj/signers/TransactionSigner;->deserialize([B)V

    .line 542
    invoke-virtual {v0, p4}, Lorg/bitcoinj/wallet/Wallet;->addTransactionSigner(Lorg/bitcoinj/signers/TransactionSigner;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception p1

    .line 544
    new-instance p3, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to deserialize TransactionSigner instance: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 549
    :cond_b
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasVersion()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 550
    invoke-virtual {p3}, Lorg/bitcoinj/wallet/Protos$Wallet;->getVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Wallet;->setVersion(I)V

    .line 554
    :cond_c
    iget-object p1, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-object v0

    .line 464
    :cond_d
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException$WrongNetwork;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/UnreadableWalletException$WrongNetwork;-><init>()V

    throw p1

    .line 462
    :cond_e
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException$FutureVersion;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/UnreadableWalletException$FutureVersion;-><init>()V

    throw p1
.end method

.method public setKeyChainFactory(Lorg/bitcoinj/wallet/KeyChainFactory;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->keyChainFactory:Lorg/bitcoinj/wallet/KeyChainFactory;

    return-void
.end method

.method public setRequireMandatoryExtensions(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->requireMandatoryExtensions:Z

    return-void
.end method

.method public walletToProto(Lorg/bitcoinj/wallet/Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 8

    .line 144
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setNetworkIdentifier(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 146
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setDescription(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 150
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getWalletTransactions()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/WalletTransaction;

    .line 151
    invoke-static {v2}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->makeTxProto(Lorg/bitcoinj/wallet/WalletTransaction;)Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addTransaction(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->serializeKeyChainGroupToProtobuf()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addAllKey(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 157
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getWatchedScripts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/Script;

    .line 159
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v5

    .line 160
    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->setProgram(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v5

    .line 161
    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getCreationTimeSeconds()J

    move-result-wide v6

    mul-long v6, v6, v3

    invoke-virtual {v5, v6, v7}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addWatchedScript(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 170
    invoke-static {v1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->hashToByteString(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 171
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHeight(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 173
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenTimeSecs()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_4

    .line 174
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenTimeSecs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockTimeSecs(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 177
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v1

    if-nez v1, :cond_5

    .line 180
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setEncryptionType(Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_2

    .line 183
    :cond_5
    invoke-interface {v1}, Lorg/bitcoinj/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setEncryptionType(Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 184
    instance-of v2, v1, Lorg/bitcoinj/crypto/KeyCrypterScrypt;

    if-eqz v2, :cond_a

    .line 185
    check-cast v1, Lorg/bitcoinj/crypto/KeyCrypterScrypt;

    .line 186
    invoke-virtual {v1}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->getScryptParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 193
    :goto_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getKeyRotationTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 194
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getKeyRotationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    .line 195
    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setKeyRotationTime(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 198
    :cond_6
    invoke-static {p1, v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->populateExtensions(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/wallet/Protos$Wallet$Builder;)V

    .line 200
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 201
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->newBuilder()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->setTag(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, v2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addTags(Lorg/bitcoinj/wallet/Protos$Tag$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_3

    .line 205
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getTransactionSigners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/signers/TransactionSigner;

    .line 207
    instance-of v3, v2, Lorg/bitcoinj/signers/LocalTransactionSigner;

    if-eqz v3, :cond_8

    goto :goto_4

    .line 209
    :cond_8
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v3

    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->setClassName(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    .line 211
    invoke-interface {v2}, Lorg/bitcoinj/signers/TransactionSigner;->serialize()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    .line 212
    invoke-virtual {v0, v3}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addTransactionSigners(Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_4

    .line 216
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setVersion(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 218
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->build()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object p1

    return-object p1

    .line 189
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The wallet has encryption of type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/bitcoinj/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' but this WalletProtobufSerializer does not know how to persist this."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public walletToText(Lorg/bitcoinj/wallet/Wallet;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->walletToProto(Lorg/bitcoinj/wallet/Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeWallet(Lorg/bitcoinj/wallet/Wallet;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->walletToProto(Lorg/bitcoinj/wallet/Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object p1

    .line 124
    invoke-virtual {p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
