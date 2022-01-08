.class public final Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private scriptBytes_:Lcom/google/protobuf/ByteString;

.field private sequence_:I

.field private transactionOutPointHash_:Lcom/google/protobuf/ByteString;

.field private transactionOutPointIndex_:I

.field private value_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5465
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 5564
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 5319
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5324
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5465
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 5564
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 5325
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 5301
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6500()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5301
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5332
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5307
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 5328
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$6700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 2

    .line 5364
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    .line 5365
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5366
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 5

    .line 5372
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 5373
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5378
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$6902(Lorg/bitcoinj/wallet/Protos$TransactionInput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5382
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$7002(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 5386
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$7102(Lorg/bitcoinj/wallet/Protos$TransactionInput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 5390
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$7202(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 5394
    :cond_4
    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->value_:J

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$7302(Lorg/bitcoinj/wallet/Protos$TransactionInput;J)J

    .line 5395
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$7402(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I

    .line 5396
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 3

    .line 5336
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5337
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 5338
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 5339
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    and-int/lit8 v0, v0, -0x3

    .line 5340
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5341
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 5342
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5343
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    and-int/lit8 v0, v0, -0x9

    .line 5344
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 5345
    iput-wide v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->value_:J

    and-int/lit8 v0, v0, -0x11

    .line 5346
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearScriptBytes()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5609
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5610
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 5611
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSequence()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5657
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5658
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    .line 5659
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTransactionOutPointHash()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5510
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5511
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 5512
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTransactionOutPointIndex()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5558
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5559
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    .line 5560
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0
.end method

.method public clearValue()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .line 5705
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 5706
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->value_:J

    .line 5707
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .line 5351
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1

    .line 5360
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5356
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5583
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 5634
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    return v0
.end method

.method public getTransactionOutPointHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5484
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransactionOutPointIndex()I
    .locals 1

    .line 5535
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 5682
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->value_:J

    return-wide v0
.end method

.method public hasScriptBytes()Z
    .locals 2

    .line 5573
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

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

.method public hasSequence()Z
    .locals 2

    .line 5624
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

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

.method public hasTransactionOutPointHash()Z
    .locals 2

    .line 5474
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTransactionOutPointIndex()Z
    .locals 2

    .line 5525
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .line 5672
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

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

    .line 5312
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 5313
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5431
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->hasTransactionOutPointHash()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5435
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->hasTransactionOutPointIndex()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5439
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->hasScriptBytes()Z

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

    .line 5301
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5301
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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

    .line 5301
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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

    .line 5301
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5301
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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

    .line 5301
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5452
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInput;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5458
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5454
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$TransactionInput;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5455
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5458
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5401
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    if-eqz v0, :cond_0

    .line 5402
    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object p1

    return-object p1

    .line 5404
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .line 5410
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5411
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasTransactionOutPointHash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5412
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setTransactionOutPointHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 5414
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasTransactionOutPointIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5415
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setTransactionOutPointIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 5417
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasScriptBytes()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5418
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 5420
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasSequence()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5421
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getSequence()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setSequence(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 5423
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5424
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 5426
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5596
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5597
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 5598
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5594
    throw p1
.end method

.method public setSequence(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5644
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5645
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    .line 5646
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0
.end method

.method public setTransactionOutPointHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5497
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5498
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 5499
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5495
    throw p1
.end method

.method public setTransactionOutPointIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5545
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5546
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    .line 5547
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0
.end method

.method public setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5692
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 5693
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->value_:J

    .line 5694
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    return-object p0
.end method
