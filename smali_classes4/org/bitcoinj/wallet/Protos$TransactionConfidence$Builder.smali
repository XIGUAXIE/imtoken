.class public final Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;"
    }
.end annotation


# instance fields
.field private appearedAtHeight_:I

.field private bitField0_:I

.field private broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastBy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private depth_:I

.field private lastBroadcastedAt_:J

.field private overridingTransaction_:Lcom/google/protobuf/ByteString;

.field private source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field private type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7398
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 7590
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 7689
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 7801
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 8088
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 7399
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 7404
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7590
    sget-object p1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 7689
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 7801
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 8088
    sget-object p1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 7405
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 7381
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$9000()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7381
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7413
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBroadcastByIsMutable()V
    .locals 3

    .line 7803
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 7804
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 7805
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8028
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8029
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8033
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 8034
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 8035
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 8037
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7387
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 7408
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7409
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBroadcastBy(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;"
        }
    .end annotation

    .line 7939
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7940
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7941
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7943
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    .line 7945
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addBroadcastBy(ILorg/bitcoinj/wallet/Protos$PeerAddress$Builder;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7925
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7926
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7927
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7928
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    .line 7930
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addBroadcastBy(ILorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7894
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 7898
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7899
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7900
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7896
    throw p1

    .line 7902
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addBroadcastBy(Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7911
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7912
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7913
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7914
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    .line 7916
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addBroadcastBy(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7877
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 7881
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7882
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7883
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7879
    throw p1

    .line 7885
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addBroadcastByBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .line 8007
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 8008
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    .line 8007
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    return-object v0
.end method

.method public addBroadcastByBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .line 8015
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 8016
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    .line 8015
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 2

    .line 7453
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    .line 7454
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7455
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 6

    .line 7461
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 7462
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7467
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9402(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 7471
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9502(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7475
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9602(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 7479
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9702(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I

    .line 7480
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_5

    .line 7481
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 7482
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 7483
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7485
    :cond_4
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9802(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 7487
    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9802(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x10

    .line 7492
    :cond_6
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->lastBroadcastedAt_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9902(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;J)J

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    or-int/lit8 v3, v3, 0x20

    .line 7496
    :cond_7
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$10002(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 7497
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$10102(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I

    .line 7498
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2

    .line 7417
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7418
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 7419
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 7420
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    and-int/lit8 v0, v0, -0x3

    .line 7421
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7422
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 7423
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7424
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    and-int/lit8 v0, v0, -0x9

    .line 7425
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7426
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 7428
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    goto :goto_0

    .line 7430
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    const-wide/16 v0, 0x0

    .line 7432
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->lastBroadcastedAt_:J

    .line 7433
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7434
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 7435
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppearedAtHeight()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7683
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7684
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    .line 7685
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBroadcastBy()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7953
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7954
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 7955
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7956
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    .line 7958
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearDepth()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7794
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7795
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    .line 7796
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastBroadcastedAt()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2

    .line 8082
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 8083
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->lastBroadcastedAt_:J

    .line 8084
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOverridingTransaction()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7742
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7743
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getOverridingTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 7744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 8117
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 8118
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 8119
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7635
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7636
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 7637
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

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

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2

    .line 7440
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppearedAtHeight()I
    .locals 1

    .line 7660
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    return v0
.end method

.method public getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1

    .line 7836
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7837
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p1

    .line 7839
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p1
.end method

.method public getBroadcastByBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 7980
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    return-object p1
.end method

.method public getBroadcastByBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;",
            ">;"
        }
    .end annotation

    .line 8023
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastByCount()I
    .locals 1

    .line 7826
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7827
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 7829
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getBroadcastByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation

    .line 7816
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7817
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7819
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastByOrBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;
    .locals 1

    .line 7987
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7988
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;

    return-object p1

    .line 7989
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;

    return-object p1
.end method

.method public getBroadcastByOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7997
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 7998
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8000
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .line 7449
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 7769
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7445
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLastBroadcastedAt()J
    .locals 2

    .line 8059
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->lastBroadcastedAt_:J

    return-wide v0
.end method

.method public getOverridingTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7712
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1

    .line 8099
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object v0
.end method

.method public getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1

    .line 7609
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object v0
.end method

.method public hasAppearedAtHeight()Z
    .locals 2

    .line 7650
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasDepth()Z
    .locals 2

    .line 7758
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasLastBroadcastedAt()Z
    .locals 2

    .line 8049
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasOverridingTransaction()Z
    .locals 2

    .line 7700
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .line 8093
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 7599
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

    .line 7392
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 7393
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7562
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7563
    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->isInitialized()Z

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

    .line 7381
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7381
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

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

    .line 7381
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

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

    .line 7381
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7381
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

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

    .line 7381
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7577
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7583
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7579
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7580
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 7583
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7503
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    if-eqz v0, :cond_0

    .line 7504
    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object p1

    return-object p1

    .line 7506
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2

    .line 7512
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7513
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7514
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setType(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 7516
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasAppearedAtHeight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7517
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getAppearedAtHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setAppearedAtHeight(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 7519
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasOverridingTransaction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7520
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getOverridingTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setOverridingTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 7522
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasDepth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7523
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDepth()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setDepth(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 7525
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_6

    .line 7526
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9800(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7527
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7528
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9800(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 7529
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    goto :goto_0

    .line 7531
    :cond_5
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7532
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9800(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7534
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_1

    .line 7537
    :cond_6
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9800(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7538
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7539
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 7540
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7541
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9800(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 7542
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7544
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$10200()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7545
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 7547
    :cond_8
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$9800(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7551
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasLastBroadcastedAt()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7552
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getLastBroadcastedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setLastBroadcastedAt(J)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 7554
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7555
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 7557
    :cond_b
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public removeBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7966
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7967
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7968
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7969
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    .line 7971
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAppearedAtHeight(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7670
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7671
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    .line 7672
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public setBroadcastBy(ILorg/bitcoinj/wallet/Protos$PeerAddress$Builder;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7864
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7865
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7866
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7867
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    .line 7869
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setBroadcastBy(ILorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7847
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 7851
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 7852
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7853
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7849
    throw p1

    .line 7855
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setDepth(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 7780
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7781
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    .line 7782
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastBroadcastedAt(J)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .line 8069
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 8070
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->lastBroadcastedAt_:J

    .line 8071
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0
.end method

.method public setOverridingTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 7727
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7728
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 7729
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7725
    throw p1
.end method

.method public setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8108
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 8109
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 8110
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 8106
    throw p1
.end method

.method public setType(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 7622
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 7623
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 7624
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7620
    throw p1
.end method
