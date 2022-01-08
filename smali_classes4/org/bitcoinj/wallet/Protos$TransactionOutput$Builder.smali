.class public final Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private scriptBytes_:Lcom/google/protobuf/ByteString;

.field private spentByTransactionHash_:Lcom/google/protobuf/ByteString;

.field private spentByTransactionIndex_:I

.field private value_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6144
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 6310
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 6361
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 6145
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 6150
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6310
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 6361
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 6151
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 6127
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7800()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6127
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6158
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6133
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$7500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 6154
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$8000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 2

    .line 6188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    .line 6189
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6190
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 6

    .line 6196
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 6197
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6202
    :goto_0
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$8202(Lorg/bitcoinj/wallet/Protos$TransactionOutput;J)J

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6206
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$8302(Lorg/bitcoinj/wallet/Protos$TransactionOutput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 6210
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$8402(Lorg/bitcoinj/wallet/Protos$TransactionOutput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 6214
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$8502(Lorg/bitcoinj/wallet/Protos$TransactionOutput;I)I

    .line 6215
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$8602(Lorg/bitcoinj/wallet/Protos$TransactionOutput;I)I

    .line 6216
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .line 6162
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    .line 6163
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    .line 6164
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 6165
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 6166
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 6167
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 6168
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 6169
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    and-int/lit8 v0, v0, -0x9

    .line 6170
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearScriptBytes()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6355
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 6356
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 6357
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSpentByTransactionHash()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6406
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 6407
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 6408
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSpentByTransactionIndex()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6454
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 6455
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    .line 6456
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    return-object p0
.end method

.method public clearValue()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .line 6304
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 6305
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    .line 6306
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .line 6175
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6127
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1

    .line 6184
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6180
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$7500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6329
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSpentByTransactionHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6380
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSpentByTransactionIndex()I
    .locals 1

    .line 6431
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 6289
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    return-wide v0
.end method

.method public hasScriptBytes()Z
    .locals 2

    .line 6319
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

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

.method public hasSpentByTransactionHash()Z
    .locals 2

    .line 6370
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

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

.method public hasSpentByTransactionIndex()Z
    .locals 2

    .line 6421
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .line 6283
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

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

    .line 6138
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$7600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 6139
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 6248
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->hasValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6252
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->hasScriptBytes()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
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

    .line 6127
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6127
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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

    .line 6127
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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

    .line 6127
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6127
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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

    .line 6127
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6265
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6271
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6267
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6268
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 6271
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6221
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    if-eqz v0, :cond_0

    .line 6222
    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object p1

    return-object p1

    .line 6224
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .line 6230
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6231
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6232
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 6234
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasScriptBytes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6235
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 6237
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasSpentByTransactionHash()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6238
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setSpentByTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 6240
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasSpentByTransactionIndex()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6241
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setSpentByTransactionIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 6243
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6342
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 6343
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 6344
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6340
    throw p1
.end method

.method public setSpentByTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6393
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 6394
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 6395
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6391
    throw p1
.end method

.method public setSpentByTransactionIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6441
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 6442
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    .line 6443
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    return-object p0
.end method

.method public setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6295
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 6296
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    .line 6297
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    return-object p0
.end method
