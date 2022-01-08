.class public final Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$Payment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private memo_:Ljava/lang/Object;

.field private merchantData_:Lcom/google/protobuf/ByteString;

.field private refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            "Lorg/bitcoin/protocols/payments/Protos$Output$Builder;",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private refundTo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field private transactions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4540
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    const-string v0, ""

    .line 5003
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 4366
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 4371
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4540
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    const-string p1, ""

    .line 5003
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 4372
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 4348
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5000()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4348
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4380
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRefundToIsMutable()V
    .locals 3

    .line 4694
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 4695
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4696
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTransactionsIsMutable()V
    .locals 3

    .line 4593
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 4594
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4595
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4354
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            "Lorg/bitcoin/protocols/payments/Protos$Output$Builder;",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4991
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4992
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4996
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 4997
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 4998
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 5000
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 4375
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4376
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllRefundTo(Ljava/lang/Iterable;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;)",
            "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;"
        }
    .end annotation

    .line 4870
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4871
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4872
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4874
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    .line 4876
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addAllTransactions(Ljava/lang/Iterable;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;"
        }
    .end annotation

    .line 4671
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureTransactionsIsMutable()V

    .line 4672
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4674
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0
.end method

.method public addRefundTo(ILorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4852
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4853
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4854
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4855
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    .line 4857
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addRefundTo(ILorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4813
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 4817
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4818
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4819
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4815
    throw p1

    .line 4821
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addRefundTo(Lorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4834
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4835
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4836
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4837
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    .line 4839
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addRefundTo(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4792
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4796
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4797
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4798
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4794
    throw p1

    .line 4800
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addRefundToBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .line 4962
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 4963
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    .line 4962
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object v0
.end method

.method public addRefundToBuilder(I)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .line 4974
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 4975
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    .line 4974
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object p1
.end method

.method public addTransactions(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4657
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureTransactionsIsMutable()V

    .line 4658
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4659
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4655
    throw p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 2

    .line 4414
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    .line 4415
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4416
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 5

    .line 4422
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 4423
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4428
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5402(Lorg/bitcoin/protocols/payments/Protos$Payment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4429
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 4430
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4431
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4433
    :cond_1
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5502(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;

    .line 4434
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_3

    .line 4435
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 4436
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4437
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4439
    :cond_2
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5602(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 4441
    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5602(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;

    :goto_1
    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x2

    .line 4446
    :cond_4
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5702(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4447
    invoke-static {v0, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5802(Lorg/bitcoin/protocols/payments/Protos$Payment;I)I

    .line 4448
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4384
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4385
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4386
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4387
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4388
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4389
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4391
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    goto :goto_0

    .line 4393
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    const-string v0, ""

    .line 4395
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 4396
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMemo()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 5080
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 5081
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5082
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMerchantData()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4585
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4586
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4587
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRefundTo()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4888
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4889
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4890
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4891
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    .line 4893
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearTransactions()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4685
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4686
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4687
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2

    .line 4401
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4348
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .line 4410
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4406
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 2

    .line 5022
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5023
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5024
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5026
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5027
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5028
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 5032
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5044
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5045
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5046
    check-cast v0, Ljava/lang/String;

    .line 5047
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5049
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    return-object v0

    .line 5052
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMerchantData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4559
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1

    .line 4739
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4740
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object p1

    .line 4742
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object p1
.end method

.method public getRefundToBuilder(I)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1

    .line 4923
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object p1
.end method

.method public getRefundToBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output$Builder;",
            ">;"
        }
    .end annotation

    .line 4986
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRefundToCount()I
    .locals 1

    .line 4725
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4726
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4728
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getRefundToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation

    .line 4711
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4712
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4714
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRefundToOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    .locals 1

    .line 4934
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4935
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    return-object p1

    .line 4936
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    return-object p1
.end method

.method public getRefundToOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4948
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 4949
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4951
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactions(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4627
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getTransactionsCount()I
    .locals 1

    .line 4617
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 4607
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMemo()Z
    .locals 2

    .line 5012
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

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

.method public hasMerchantData()Z
    .locals 2

    .line 4549
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

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

    .line 4359
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 4360
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4512
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4513
    invoke-virtual {p0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    .line 4348
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4348
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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

    .line 4348
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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

    .line 4348
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4348
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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

    .line 4348
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4527
    :try_start_0
    sget-object v1, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Payment;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4533
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4529
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/protocols/payments/Protos$Payment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4530
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 4533
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4453
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    if-eqz v0, :cond_0

    .line 4454
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object p1

    return-object p1

    .line 4456
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2

    .line 4462
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4463
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->hasMerchantData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4464
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 4466
    :cond_1
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5500(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4467
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4468
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5500(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4469
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    goto :goto_0

    .line 4471
    :cond_2
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureTransactionsIsMutable()V

    .line 4472
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5500(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4474
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4476
    :cond_3
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_5

    .line 4477
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4478
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4479
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4480
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    goto :goto_1

    .line 4482
    :cond_4
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4483
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4485
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_2

    .line 4488
    :cond_5
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4489
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4490
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 4491
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4492
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4493
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4495
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5900()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4496
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 4498
    :cond_7
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4502
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4503
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4504
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5700(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 4505
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4507
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public removeRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4905
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4906
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4907
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4908
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    .line 4910
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5067
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 5068
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5069
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5065
    throw p1
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5097
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 5098
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5099
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5095
    throw p1
.end method

.method public setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4572
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4573
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4574
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4570
    throw p1
.end method

.method public setRefundTo(ILorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4775
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4776
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4777
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4778
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    .line 4780
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setRefundTo(ILorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4754
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 4758
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4759
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4760
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4756
    throw p1

    .line 4762
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTransactions(ILcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 4641
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureTransactionsIsMutable()V

    .line 4642
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4643
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4639
    throw p1
.end method
