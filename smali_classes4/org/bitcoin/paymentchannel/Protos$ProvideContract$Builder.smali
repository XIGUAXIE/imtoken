.class public final Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientKey_:Lcom/google/protobuf/ByteString;

.field private initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

.field private tx_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6497
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 6635
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6730
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6909
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 6498
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 6503
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6635
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6730
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6909
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 6504
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 6480
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7500()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6480
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6512
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6486
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getInitialPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6898
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6899
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 6901
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    .line 6902
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6904
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6906
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 6507
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$7700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6508
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 2

    .line 6544
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    .line 6545
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6546
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 5

    .line 6552
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 6553
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6558
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$7902(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6562
    :cond_1
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_2

    .line 6563
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$8002(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_1

    .line 6565
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$8002(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    :goto_1
    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 6570
    :cond_3
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$8102(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 6571
    invoke-static {v0, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$8202(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;I)I

    .line 6572
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6516
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6517
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6518
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6519
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6520
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0

    .line 6522
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 6524
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6525
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 6526
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearClientKey()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6966
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6967
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getClientKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 6968
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInitialPayment()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6844
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6845
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6846
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    goto :goto_0

    .line 6848
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 6850
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTx()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6724
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6725
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6726
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 2

    .line 6531
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6934
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6480
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .line 6540
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6536
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .line 6757
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6758
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0

    .line 6760
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getInitialPaymentBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 6864
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6865
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    .line 6866
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    return-object v0
.end method

.method public getInitialPaymentOrBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;
    .locals 1

    .line 6879
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 6880
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;

    return-object v0

    .line 6882
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6676
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasClientKey()Z
    .locals 2

    .line 6921
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

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

.method public hasInitialPayment()Z
    .locals 2

    .line 6744
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

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

.method public hasTx()Z
    .locals 2

    .line 6655
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

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

    .line 6491
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 6492
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 6601
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->hasTx()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6605
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->hasInitialPayment()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 6609
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

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

    .line 6480
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6480
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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

    .line 6480
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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

    .line 6480
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6480
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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

    .line 6480
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6622
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6628
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6624
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6625
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 6628
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6577
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    if-eqz v0, :cond_0

    .line 6578
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    return-object p1

    .line 6580
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6586
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6587
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasTx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6588
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 6590
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasInitialPayment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6591
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeInitialPayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 6593
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasClientKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6594
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getClientKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->setClientKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 6596
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeInitialPayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 3

    .line 6818
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6819
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6820
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6821
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6822
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0

    .line 6824
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6826
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    goto :goto_1

    .line 6828
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6830
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    return-object p0
.end method

.method public setClientKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6950
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6951
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 6952
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6948
    throw p1
.end method

.method public setInitialPayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6798
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6799
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6800
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    goto :goto_0

    .line 6802
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6804
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    return-object p0
.end method

.method public setInitialPayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6774
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 6778
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6779
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6776
    throw p1

    .line 6781
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6783
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6700
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6701
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6702
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6698
    throw p1
.end method
