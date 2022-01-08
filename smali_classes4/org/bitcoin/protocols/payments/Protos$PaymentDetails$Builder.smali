.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private expires_:J

.field private memo_:Ljava/lang/Object;

.field private merchantData_:Lcom/google/protobuf/ByteString;

.field private network_:Ljava/lang/Object;

.field private outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
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

.field private outputs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field private paymentUrl_:Ljava/lang/Object;

.field private time_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1356
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, "main"

    .line 1558
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    const-string v0, ""

    .line 2066
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2166
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2266
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 1357
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, "main"

    .line 1558
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    const-string p1, ""

    .line 2066
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2166
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2266
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 1363
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 1339
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1300()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1339
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1371
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;-><init>()V

    return-object v0
.end method

.method private ensureOutputsIsMutable()V
    .locals 3

    .line 1661
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1662
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1663
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1345
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
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

    .line 1958
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1959
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1963
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 1964
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 1965
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1967
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1366
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllOutputs(Ljava/lang/Iterable;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;)",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;"
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1838
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1839
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1841
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    .line 1843
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addOutputs(ILorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1819
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1820
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1821
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1822
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    .line 1824
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addOutputs(ILorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1780
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1784
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1785
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1786
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1782
    throw p1

    .line 1788
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addOutputs(Lorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1801
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1802
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1803
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1804
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    .line 1806
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addOutputs(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1759
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1763
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1764
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1765
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1761
    throw p1

    .line 1767
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addOutputsBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .line 1929
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 1930
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    .line 1929
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object v0
.end method

.method public addOutputsBuilder(I)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .line 1941
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 1942
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    .line 1941
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 2

    .line 1411
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    .line 1412
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1413
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 6

    .line 1419
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 1420
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1425
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1702(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_2

    .line 1427
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 1428
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1429
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1431
    :cond_1
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1802(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1433
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1802(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x2

    .line 1438
    :cond_3
    iget-wide v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1902(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;J)J

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x4

    .line 1442
    :cond_4
    iget-wide v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2002(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;J)J

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x8

    .line 1446
    :cond_5
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2102(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x10

    .line 1450
    :cond_6
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2202(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    or-int/lit8 v3, v3, 0x20

    .line 1454
    :cond_7
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2302(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1455
    invoke-static {v0, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2402(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;I)I

    .line 1456
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 3

    .line 1375
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, "main"

    .line 1376
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1377
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1378
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1379
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1380
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    goto :goto_0

    .line 1382
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    const-wide/16 v0, 0x0

    .line 1384
    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    .line 1385
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1386
    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    and-int/lit8 v0, v2, -0x9

    .line 1387
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    const-string v1, ""

    .line 1388
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x11

    .line 1389
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1390
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x21

    .line 1391
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1392
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 1393
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearExpires()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2

    .line 2060
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2061
    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    .line 2062
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMemo()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 2143
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2144
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2145
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMerchantData()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 2311
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2312
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 2313
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNetwork()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1635
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1636
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1637
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOutputs()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1855
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1856
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1857
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1858
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    .line 1860
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearPaymentUrl()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 2243
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2244
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2245
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTime()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2

    .line 2012
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2013
    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    .line 2014
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2

    .line 1398
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1

    .line 1407
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1403
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .line 2037
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    return-wide v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 2

    .line 2085
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2086
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2087
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2089
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2090
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2095
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2107
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2108
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2109
    check-cast v0, Ljava/lang/String;

    .line 2110
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2112
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    return-object v0

    .line 2115
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMerchantData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2285
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 1577
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1578
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1579
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1581
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1582
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 1587
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1599
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1600
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1601
    check-cast v0, Ljava/lang/String;

    .line 1602
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1604
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 1607
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1

    .line 1706
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1707
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object p1

    .line 1709
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object p1
.end method

.method public getOutputsBuilder(I)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1

    .line 1890
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object p1
.end method

.method public getOutputsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output$Builder;",
            ">;"
        }
    .end annotation

    .line 1953
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputsCount()I
    .locals 1

    .line 1692
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1693
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1695
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation

    .line 1678
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1679
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1681
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    .locals 1

    .line 1901
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1902
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    return-object p1

    .line 1903
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    return-object p1
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
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

    .line 1915
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1916
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1918
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 2

    .line 2185
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2186
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2187
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2189
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2190
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2191
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2195
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2207
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2208
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2209
    check-cast v0, Ljava/lang/String;

    .line 2210
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2212
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    return-object v0

    .line 2215
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1989
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    return-wide v0
.end method

.method public hasExpires()Z
    .locals 2

    .line 2027
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

    .line 2075
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

.method public hasMerchantData()Z
    .locals 2

    .line 2275
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

.method public hasNetwork()Z
    .locals 2

    .line 1567
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPaymentUrl()Z
    .locals 2

    .line 2175
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    .line 1979
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1350
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 1351
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1526
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->hasTime()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1530
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1531
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    .line 1339
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1339
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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

    .line 1339
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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

    .line 1339
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1339
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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

    .line 1339
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1545
    :try_start_0
    sget-object v1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1551
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1547
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1548
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1551
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1461
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    if-eqz v0, :cond_0

    .line 1462
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object p1

    return-object p1

    .line 1464
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2

    .line 1470
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1471
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1473
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1700(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1474
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1476
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_3

    .line 1477
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1478
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1479
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1480
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    goto :goto_0

    .line 1482
    :cond_2
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1483
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1485
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_1

    .line 1488
    :cond_3
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1489
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1490
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 1491
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1492
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1493
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1495
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2500()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1496
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 1498
    :cond_5
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1502
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1503
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setTime(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 1505
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasExpires()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1506
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getExpires()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setExpires(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 1508
    :cond_8
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1509
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1510
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2100(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 1511
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1513
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasPaymentUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1514
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1515
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2200(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 1516
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1518
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMerchantData()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1519
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 1521
    :cond_b
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public removeOutputs(I)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1872
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1873
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1874
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1875
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    .line 1877
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setExpires(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 2047
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2048
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    .line 2049
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2130
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2131
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2132
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2128
    throw p1
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2160
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2161
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2162
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2158
    throw p1
.end method

.method public setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2298
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2299
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 2300
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2296
    throw p1
.end method

.method public setNetwork(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1622
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1623
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1624
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1620
    throw p1
.end method

.method public setNetworkBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1652
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1653
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1654
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1650
    throw p1
.end method

.method public setOutputs(ILorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1742
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1743
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1744
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1745
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    .line 1747
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setOutputs(ILorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1721
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1725
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1726
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1727
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1723
    throw p1

    .line 1729
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setPaymentUrl(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2230
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2231
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2232
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2228
    throw p1
.end method

.method public setPaymentUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2260
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2261
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2262
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2258
    throw p1
.end method

.method public setTime(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1999
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2000
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    .line 2001
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    return-object p0
.end method
