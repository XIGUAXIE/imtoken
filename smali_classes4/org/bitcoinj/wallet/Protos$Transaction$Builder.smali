.class public final Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;"
    }
.end annotation


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

.field private confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence;",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

.field private exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$ExchangeRate;",
            "Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

.field private hash_:Lcom/google/protobuf/ByteString;

.field private lockTime_:I

.field private memo_:Ljava/lang/Object;

.field private pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field private purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field private transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private transactionInput_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;",
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

.field private updatedAt_:J

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9619
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 10008
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 10043
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 10203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 10443
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 10682
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 10789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 10855
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 11007
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 11042
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    const-string v0, ""

    .line 11194
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    .line 9620
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 9625
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 10008
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 10043
    sget-object p1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 10203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 10443
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 10682
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 10789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 10855
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 11007
    sget-object p1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 11042
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    const-string p1, ""

    .line 11194
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    .line 9626
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 9602
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10600()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 9602
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->create()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 9637
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBlockHashIsMutable()V
    .locals 3

    .line 10684
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 10685
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 10686
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBlockRelativityOffsetsIsMutable()V
    .locals 3

    .line 10791
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 10792
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 10793
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTransactionInputIsMutable()V
    .locals 3

    .line 10205
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 10206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 10207
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTransactionOutputIsMutable()V
    .locals 3

    .line 10445
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 10446
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 10447
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getConfidenceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence;",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10996
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 10997
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 10999
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v1

    .line 11000
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 11001
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 11002
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 11004
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9608
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getExchangeRateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$ExchangeRate;",
            "Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11183
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 11184
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 11186
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getExchangeRate()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v1

    .line 11187
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 11188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 11189
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 11191
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10430
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 10431
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10435
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 10436
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 10437
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 10439
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10670
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 10671
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10675
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 10676
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 10677
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 10679
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 9629
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9630
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9631
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9632
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getConfidenceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 9633
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getExchangeRateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBlockHash(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;"
        }
    .end annotation

    .line 10768
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockHashIsMutable()V

    .line 10769
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10771
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBlockRelativityOffsets(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;"
        }
    .end annotation

    .line 10839
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockRelativityOffsetsIsMutable()V

    .line 10840
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10842
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllTransactionInput(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;"
        }
    .end annotation

    .line 10341
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10342
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 10343
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10345
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10347
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addAllTransactionOutput(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;"
        }
    .end annotation

    .line 10581
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10582
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 10583
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10585
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10587
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10753
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockHashIsMutable()V

    .line 10754
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10755
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10751
    throw p1
.end method

.method public addBlockRelativityOffsets(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10829
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockRelativityOffsetsIsMutable()V

    .line 10830
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10831
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public addTransactionInput(ILorg/bitcoinj/wallet/Protos$TransactionInput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10327
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10328
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 10329
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10330
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10332
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionInput(ILorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10296
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 10300
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 10301
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10302
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10298
    throw p1

    .line 10304
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionInput(Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10313
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10314
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 10315
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10316
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10318
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionInput(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10279
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 10283
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 10284
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10285
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10281
    throw p1

    .line 10287
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionInputBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .line 10409
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 10410
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    .line 10409
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    return-object v0
.end method

.method public addTransactionInputBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .line 10417
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 10418
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    .line 10417
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    return-object p1
.end method

.method public addTransactionOutput(ILorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10567
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10568
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 10569
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10570
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10572
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionOutput(ILorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10536
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 10540
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 10541
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10542
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10538
    throw p1

    .line 10544
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionOutput(Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10553
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10554
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 10555
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10556
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10558
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionOutput(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10519
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 10523
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 10524
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10525
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10521
    throw p1

    .line 10527
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionOutputBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .line 10649
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 10650
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    .line 10649
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    return-object v0
.end method

.method public addTransactionOutputBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .line 10657
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 10658
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    .line 10657
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 2

    .line 9701
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    .line 9702
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9703
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 6

    .line 9709
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$Transaction;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 9710
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9715
    :goto_0
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11002(Lorg/bitcoinj/wallet/Protos$Transaction;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 9719
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11102(Lorg/bitcoinj/wallet/Protos$Transaction;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 9723
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11202(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9727
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11302(Lorg/bitcoinj/wallet/Protos$Transaction;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9731
    :cond_4
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11402(Lorg/bitcoinj/wallet/Protos$Transaction;J)J

    .line 9732
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_6

    .line 9733
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    .line 9734
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 9735
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9737
    :cond_5
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11502(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 9739
    :cond_6
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11502(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    .line 9741
    :goto_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_8

    .line 9742
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 9743
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 9744
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9746
    :cond_7
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11602(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 9748
    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11602(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    .line 9750
    :goto_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    .line 9751
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 9752
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9754
    :cond_9
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11702(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    .line 9755
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    .line 9756
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 9757
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9759
    :cond_a
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11802(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_b

    or-int/lit8 v3, v3, 0x20

    .line 9763
    :cond_b
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_c

    .line 9764
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11902(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    goto :goto_3

    .line 9766
    :cond_c
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11902(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    :goto_3
    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_d

    or-int/lit8 v3, v3, 0x40

    .line 9771
    :cond_d
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$12002(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x80

    .line 9775
    :cond_e
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_f

    .line 9776
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$12102(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    goto :goto_4

    .line 9778
    :cond_f
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$12102(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    :goto_4
    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10

    or-int/lit16 v3, v3, 0x100

    .line 9783
    :cond_10
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$12202(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9784
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$12302(Lorg/bitcoinj/wallet/Protos$Transaction;I)I

    .line 9785
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 3

    .line 9641
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 9642
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    .line 9643
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9644
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 9645
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9646
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 9647
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9648
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    and-int/lit8 v0, v1, -0x9

    .line 9649
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 9650
    iput-wide v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    and-int/lit8 v0, v0, -0x11

    .line 9651
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9652
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9653
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 9654
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    goto :goto_0

    .line 9656
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 9658
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 9659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 9660
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    goto :goto_1

    .line 9662
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 9664
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 9665
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9666
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 9667
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9668
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 9669
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    goto :goto_2

    .line 9671
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 9673
    :goto_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9674
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 9675
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9676
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 9677
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    goto :goto_3

    .line 9679
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 9681
    :goto_3
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const-string v1, ""

    .line 9682
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    and-int/lit16 v0, v0, -0x1001

    .line 9683
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBlockHash()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 10784
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10785
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBlockRelativityOffsets()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10849
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 10850
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10851
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConfidence()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10951
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 10952
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 10953
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10955
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 10957
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearExchangeRate()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 11138
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 11139
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 11140
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 11142
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 11144
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearHash()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10037
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10038
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 10039
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLockTime()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10148
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 10149
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    .line 10150
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMemo()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 11276
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 11277
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    .line 11278
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPool()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10100
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10101
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 10102
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 11036
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 11037
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 11038
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTransactionInput()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10355
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 10357
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10358
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10360
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearTransactionOutput()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10595
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10596
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 10597
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10598
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10600
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearUpdatedAt()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .line 10196
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 10197
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    .line 10198
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10002
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 10003
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    .line 10004
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

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

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .line 9688
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->create()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBlockHash(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10721
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getBlockHashCount()I
    .locals 1

    .line 10710
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

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

    .line 10699
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockRelativityOffsets(I)I
    .locals 1

    .line 10813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getBlockRelativityOffsetsCount()I
    .locals 1

    .line 10807
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

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

    .line 10801
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .line 10876
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 10877
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0

    .line 10879
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public getConfidenceBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 10968
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10969
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 10970
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getConfidenceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    return-object v0
.end method

.method public getConfidenceOrBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;
    .locals 1

    .line 10980
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 10981
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;

    return-object v0

    .line 10983
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1

    .line 9697
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9693
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExchangeRate()Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1

    .line 11063
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 11064
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object v0

    .line 11066
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object v0
.end method

.method public getExchangeRateBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 11155
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 11156
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 11157
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getExchangeRateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    return-object v0
.end method

.method public getExchangeRateOrBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;
    .locals 1

    .line 11167
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 11168
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;

    return-object v0

    .line 11170
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object v0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10019
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .line 10125
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    return v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 2

    .line 11215
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    .line 11216
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 11217
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11219
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11220
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11221
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 11225
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11238
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    .line 11239
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11240
    check-cast v0, Ljava/lang/String;

    .line 11241
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11243
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    return-object v0

    .line 11246
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    .line 10068
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object v0
.end method

.method public getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1

    .line 11018
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object v0
.end method

.method public getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1

    .line 10238
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10239
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p1

    .line 10241
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p1
.end method

.method public getTransactionInputBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 10382
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    return-object p1
.end method

.method public getTransactionInputBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;",
            ">;"
        }
    .end annotation

    .line 10425
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionInputCount()I
    .locals 1

    .line 10228
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10229
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 10231
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

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

    .line 10218
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10219
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 10221
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionInputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;
    .locals 1

    .line 10389
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10390
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;

    return-object p1

    .line 10391
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

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

    .line 10399
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 10400
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 10402
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1

    .line 10478
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10479
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p1

    .line 10481
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p1
.end method

.method public getTransactionOutputBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 10622
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    return-object p1
.end method

.method public getTransactionOutputBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;",
            ">;"
        }
    .end annotation

    .line 10665
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionOutputCount()I
    .locals 1

    .line 10468
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10469
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 10471
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

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

    .line 10458
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10459
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 10461
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionOutputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;
    .locals 1

    .line 10629
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10630
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;

    return-object p1

    .line 10631
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

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

    .line 10639
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 10640
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 10642
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .line 10173
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 9979
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 2

    .line 10866
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v1, 0x200

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

    .line 11053
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v1, 0x800

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

    .line 10013
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

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

    .line 10115
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

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

    .line 11204
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v1, 0x1000

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

    .line 10055
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

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

    .line 11012
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    const/16 v1, 0x400

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

    .line 10163
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

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

    .line 9969
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

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

    .line 9613
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Transaction;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9614
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 9906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hasVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9910
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hasHash()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 9914
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 9915
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 9920
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 9921
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9926
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9927
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 9932
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hasExchangeRate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9933
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getExchangeRate()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public mergeConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 3

    .line 10928
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x200

    if-nez v0, :cond_1

    .line 10929
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 10930
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10931
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 10932
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    goto :goto_0

    .line 10934
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 10936
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_1

    .line 10938
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 10940
    :goto_1
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeExchangeRate(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 3

    .line 11115
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x800

    if-nez v0, :cond_1

    .line 11116
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 11117
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11118
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 11119
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->newBuilder(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    goto :goto_0

    .line 11121
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 11123
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_1

    .line 11125
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11127
    :goto_1
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9602
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 9602
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

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

    .line 9602
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

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

    .line 9602
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9602
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

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

    .line 9602
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9947
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Transaction;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9953
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9949
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$Transaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9950
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 9953
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 9790
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Transaction;

    if-eqz v0, :cond_0

    .line 9791
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Transaction;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p1

    return-object p1

    .line 9793
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 3

    .line 9799
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9800
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9801
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setVersion(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9803
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9804
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9806
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasPool()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9807
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setPool(Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9809
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasLockTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9810
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getLockTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setLockTime(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9812
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasUpdatedAt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9813
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setUpdatedAt(J)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9815
    :cond_5
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 9816
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11500(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 9817
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9818
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11500(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 9819
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    goto :goto_0

    .line 9821
    :cond_6
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 9822
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11500(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9824
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_2

    .line 9827
    :cond_7
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11500(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 9828
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9829
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 9830
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9831
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11500(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 9832
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9834
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$12400()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9835
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 9837
    :cond_9
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11500(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9841
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_c

    .line 9842
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11600(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 9843
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9844
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11600(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 9845
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    goto :goto_3

    .line 9847
    :cond_b
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 9848
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11600(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9850
    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_4

    .line 9853
    :cond_c
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11600(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 9854
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9855
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 9856
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9857
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11600(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 9858
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9860
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$12500()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9861
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_d
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_4

    .line 9863
    :cond_e
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11600(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9867
    :cond_f
    :goto_4
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 9868
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 9869
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 9870
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    goto :goto_5

    .line 9872
    :cond_10
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockHashIsMutable()V

    .line 9873
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9875
    :goto_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 9877
    :cond_11
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 9878
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 9879
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 9880
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    goto :goto_6

    .line 9882
    :cond_12
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockRelativityOffsetsIsMutable()V

    .line 9883
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$11800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9885
    :goto_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 9887
    :cond_13
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9888
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9890
    :cond_14
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasPurpose()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 9891
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setPurpose(Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9893
    :cond_15
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasExchangeRate()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 9894
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getExchangeRate()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeExchangeRate(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 9896
    :cond_16
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 9897
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9898
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$12200(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    .line 9899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 9901
    :cond_17
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public removeTransactionInput(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10368
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10369
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 10370
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10371
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10373
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10608
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10609
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 10610
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10611
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10613
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setBlockHash(ILcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 10736
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockHashIsMutable()V

    .line 10737
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10738
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10734
    throw p1
.end method

.method public setBlockRelativityOffsets(II)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10820
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockRelativityOffsetsIsMutable()V

    .line 10821
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10822
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public setConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10911
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 10912
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 10913
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10915
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 10917
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public setConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10890
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 10894
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 10895
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10892
    throw p1

    .line 10897
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 10899
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public setExchangeRate(Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 11098
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 11099
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->build()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 11100
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 11102
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->build()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11104
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public setExchangeRate(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 11077
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 11081
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->exchangeRate_:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 11082
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11079
    throw p1

    .line 11084
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11086
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    return-object p0
.end method

.method public setHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10028
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10029
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 10030
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10026
    throw p1
.end method

.method public setLockTime(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10135
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10136
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    .line 10137
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 11262
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 11263
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    .line 11264
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11260
    throw p1
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 11294
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 11295
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->memo_:Ljava/lang/Object;

    .line 11296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11292
    throw p1
.end method

.method public setPool(Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10084
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10085
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 10086
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10082
    throw p1
.end method

.method public setPurpose(Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 11027
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 11028
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 11029
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11025
    throw p1
.end method

.method public setTransactionInput(ILorg/bitcoinj/wallet/Protos$TransactionInput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10266
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10267
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 10268
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10269
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10271
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTransactionInput(ILorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10249
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 10253
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 10254
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10255
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10251
    throw p1

    .line 10257
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTransactionOutput(ILorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10506
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10507
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 10508
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10509
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    .line 10511
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTransactionOutput(ILorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10489
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 10493
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 10494
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10495
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10491
    throw p1

    .line 10497
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setUpdatedAt(J)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 10183
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 10184
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    .line 10185
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 9989
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 9990
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    .line 9991
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    return-object p0
.end method
