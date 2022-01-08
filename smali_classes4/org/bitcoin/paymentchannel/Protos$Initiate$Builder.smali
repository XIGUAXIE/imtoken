.class public final Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$Initiate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private expireTimeSecs_:J

.field private minAcceptedChannelSize_:J

.field private minPayment_:J

.field private multisigKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4531
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4673
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4532
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 4537
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4673
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4538
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 4514
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4400()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4514
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4545
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4520
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$4100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4541
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$4600()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 2

    .line 4575
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    .line 4576
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4577
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 6

    .line 4583
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 4584
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4589
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$4802(Lorg/bitcoin/paymentchannel/Protos$Initiate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 4593
    :cond_1
    iget-wide v4, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$4902(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 4597
    :cond_2
    iget-wide v4, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$5002(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 4601
    :cond_3
    iget-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    invoke-static {v0, v1, v2}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$5102(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J

    .line 4602
    invoke-static {v0, v3}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$5202(Lorg/bitcoin/paymentchannel/Protos$Initiate;I)I

    .line 4603
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 3

    .line 4549
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4550
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4551
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 4552
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    and-int/lit8 v0, v0, -0x3

    .line 4553
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4554
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    and-int/lit8 v0, v0, -0x5

    .line 4555
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4556
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    and-int/lit8 v0, v0, -0x9

    .line 4557
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearExpireTimeSecs()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .line 4858
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 4859
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    .line 4860
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMinAcceptedChannelSize()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .line 4786
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 4787
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    .line 4788
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMinPayment()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .line 4926
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 4927
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    .line 4928
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMultisigKey()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4726
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4727
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4728
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .line 4562
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .line 4571
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4567
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$4100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExpireTimeSecs()J
    .locals 2

    .line 4823
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    return-wide v0
.end method

.method public getMinAcceptedChannelSize()J
    .locals 2

    .line 4757
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    return-wide v0
.end method

.method public getMinPayment()J
    .locals 2

    .line 4893
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    return-wide v0
.end method

.method public getMultisigKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4696
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasExpireTimeSecs()Z
    .locals 2

    .line 4807
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

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

.method public hasMinAcceptedChannelSize()Z
    .locals 2

    .line 4744
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

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

.method public hasMinPayment()Z
    .locals 2

    .line 4878
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

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

.method public hasMultisigKey()Z
    .locals 2

    .line 4684
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

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

    .line 4525
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$4200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4526
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4635
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->hasMultisigKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4639
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->hasMinAcceptedChannelSize()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4643
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->hasExpireTimeSecs()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4647
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->hasMinPayment()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
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

    .line 4514
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4514
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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

    .line 4514
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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

    .line 4514
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4514
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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

    .line 4514
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4660
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$Initiate;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4666
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4662
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$Initiate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4663
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 4666
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4608
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    if-eqz v0, :cond_0

    .line 4609
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    return-object p1

    .line 4611
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .line 4617
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4618
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMultisigKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4619
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4621
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMinAcceptedChannelSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4622
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinAcceptedChannelSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMinAcceptedChannelSize(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4624
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasExpireTimeSecs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4625
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getExpireTimeSecs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setExpireTimeSecs(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4627
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMinPayment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4628
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMinPayment(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4630
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setExpireTimeSecs(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4839
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4840
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    .line 4841
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    return-object p0
.end method

.method public setMinAcceptedChannelSize(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4770
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4771
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    .line 4772
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    return-object p0
.end method

.method public setMinPayment(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4908
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4909
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    .line 4910
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    return-object p0
.end method

.method public setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4711
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4712
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4713
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4709
    throw p1
.end method
