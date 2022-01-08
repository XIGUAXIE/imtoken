.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private memo_:Ljava/lang/Object;

.field private paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5513
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5640
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    const-string v0, ""

    .line 5792
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5514
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5519
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5640
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    const-string p1, ""

    .line 5792
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5520
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 5496
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6300()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5496
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5528
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5502
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5781
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5782
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 5784
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    .line 5785
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5786
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 5787
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5789
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 5523
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5524
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 2

    .line 5558
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    .line 5559
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5560
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 4

    .line 5566
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 5567
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5572
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_1

    .line 5573
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6702(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment;

    goto :goto_1

    .line 5575
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6702(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment;

    :goto_1
    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 5580
    :cond_2
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6802(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5581
    invoke-static {v0, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6902(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;I)I

    .line 5582
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 2

    .line 5532
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5533
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5534
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    goto :goto_0

    .line 5536
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5538
    :goto_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    const-string v1, ""

    .line 5539
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x3

    .line 5540
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMemo()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5869
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5870
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5871
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPayment()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5736
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5737
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5738
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    goto :goto_0

    .line 5740
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5742
    :goto_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 2

    .line 5545
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5496
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1

    .line 5554
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5550
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 2

    .line 5811
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5812
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5813
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5815
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5816
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5817
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 5821
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5833
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5834
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5835
    check-cast v0, Ljava/lang/String;

    .line 5836
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5838
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    return-object v0

    .line 5841
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .line 5661
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5662
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0

    .line 5664
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public getPaymentBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 5753
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5754
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5755
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    return-object v0
.end method

.method public getPaymentOrBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;
    .locals 1

    .line 5765
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 5766
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;

    return-object v0

    .line 5768
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public hasMemo()Z
    .locals 2

    .line 5801
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

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

.method public hasPayment()Z
    .locals 2

    .line 5651
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

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

    .line 5507
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 5508
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5610
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->hasPayment()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5614
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->isInitialized()Z

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

    .line 5496
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5496
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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

    .line 5496
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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

    .line 5496
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5496
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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

    .line 5496
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5627
    :try_start_0
    sget-object v1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5633
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5629
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5630
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5633
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5587
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    if-eqz v0, :cond_0

    .line 5588
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object p1

    return-object p1

    .line 5590
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5596
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5597
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasPayment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5598
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergePayment(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 5600
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5601
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5602
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6800(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5603
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5605
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergePayment(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 3

    .line 5713
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5714
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5715
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5716
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5717
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    goto :goto_0

    .line 5719
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5721
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    goto :goto_1

    .line 5723
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 5725
    :goto_1
    iget p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5856
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5857
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5858
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5854
    throw p1
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5886
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5887
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5888
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5884
    throw p1
.end method

.method public setPayment(Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5696
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5697
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5698
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    goto :goto_0

    .line 5700
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 5702
    :goto_0
    iget p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPayment(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5675
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 5679
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5680
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5677
    throw p1

    .line 5682
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 5684
    :goto_0
    iget p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    return-object p0
.end method
