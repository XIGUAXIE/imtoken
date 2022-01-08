.class public final Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private multisigKey_:Lcom/google/protobuf/ByteString;

.field private tx_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5431
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5486
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5316
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5321
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5431
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5486
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5322
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 5298
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5600()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5298
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5329
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5304
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 5325
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->access$5800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 2

    .line 5355
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    .line 5356
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5357
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 4

    .line 5363
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 5364
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5369
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->access$6002(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5373
    :cond_1
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->access$6102(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 5374
    invoke-static {v0, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->access$6202(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;I)I

    .line 5375
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5333
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5334
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5335
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5336
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5337
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMultisigKey()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5480
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5481
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5482
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTx()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5559
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5560
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5561
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 2

    .line 5342
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5298
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .line 5351
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5347
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMultisigKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5452
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5519
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMultisigKey()Z
    .locals 2

    .line 5441
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTx()Z
    .locals 2

    .line 5502
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

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

    .line 5309
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 5310
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5401
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->hasMultisigKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5405
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->hasTx()Z

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

    .line 5298
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5298
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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

    .line 5298
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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

    .line 5298
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5298
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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

    .line 5298
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5418
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5424
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5420
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5421
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5424
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5380
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    if-eqz v0, :cond_0

    .line 5381
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    return-object p1

    .line 5383
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5389
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5390
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->hasMultisigKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5391
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 5393
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->hasTx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5394
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 5396
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5466
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5467
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5468
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5464
    throw p1
.end method

.method public setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5539
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5540
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5541
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5537
    throw p1
.end method
