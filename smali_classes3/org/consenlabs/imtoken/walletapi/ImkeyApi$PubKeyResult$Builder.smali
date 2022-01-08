.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResultOrBuilder;"
    }
.end annotation


# instance fields
.field private chainType_:Ljava/lang/Object;

.field private derivedMode_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;

.field private pubKey_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5325
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 5473
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5549
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5625
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5701
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    .line 5326
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5331
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 5473
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5549
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5625
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5701
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    .line 5332
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 5307
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 5307
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5313
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$8300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 5336
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$8700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    .line 5414
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 2

    .line 5366
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    .line 5367
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5368
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 2

    .line 5375
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 5376
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$8902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5377
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9002(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5378
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5379
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5380
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5341
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 5342
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5344
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5346
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5348
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearChainType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5604
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getChainType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5605
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDerivedMode()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5756
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDerivedMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    .line 5757
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    .line 5397
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    .line 5402
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    return-object p1
.end method

.method public clearPath()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5528
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5529
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPubKey()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5680
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPubKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5681
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

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

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5386
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 5555
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5556
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5557
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5559
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5560
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 5563
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5572
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5573
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5574
    check-cast v0, Ljava/lang/String;

    .line 5575
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5577
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 5580
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1

    .line 5361
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDerivedMode()Ljava/lang/String;
    .locals 2

    .line 5707
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    .line 5708
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5709
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5711
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5712
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    return-object v0

    .line 5715
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDerivedModeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5724
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    .line 5725
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5726
    check-cast v0, Ljava/lang/String;

    .line 5727
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5729
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    return-object v0

    .line 5732
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5356
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$8300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 5479
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5480
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5481
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5483
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5484
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 5487
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5496
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5497
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5498
    check-cast v0, Ljava/lang/String;

    .line 5499
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5501
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 5504
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPubKey()Ljava/lang/String;
    .locals 2

    .line 5631
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5632
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5633
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5635
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5636
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    return-object v0

    .line 5639
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPubKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5648
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5649
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5650
    check-cast v0, Ljava/lang/String;

    .line 5651
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5653
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    return-object v0

    .line 5656
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5319
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$8400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    .line 5320
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

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

    .line 5307
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

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

    .line 5307
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

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

    .line 5307
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

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

    .line 5307
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5461
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5467
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5463
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5464
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5467
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    .line 5469
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5418
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    if-eqz v0, :cond_0

    .line 5419
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1

    .line 5421
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5427
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5428
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5429
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$8900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5430
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    .line 5432
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5433
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5434
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    .line 5436
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPubKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5437
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5438
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    .line 5440
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDerivedMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5441
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    .line 5442
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    .line 5444
    :cond_4
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    .line 5445
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    .line 5785
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    return-object p1
.end method

.method public setChainType(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5594
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5595
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5591
    throw p1
.end method

.method public setChainTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5618
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9600(Lcom/google/protobuf/ByteString;)V

    .line 5620
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->chainType_:Ljava/lang/Object;

    .line 5621
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5616
    throw p1
.end method

.method public setDerivedMode(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5746
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    .line 5747
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5743
    throw p1
.end method

.method public setDerivedModeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5770
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9800(Lcom/google/protobuf/ByteString;)V

    .line 5772
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->derivedMode_:Ljava/lang/Object;

    .line 5773
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5768
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    .line 5392
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5518
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5519
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5515
    throw p1
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5542
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9500(Lcom/google/protobuf/ByteString;)V

    .line 5544
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->path_:Ljava/lang/Object;

    .line 5545
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5540
    throw p1
.end method

.method public setPubKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5670
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5671
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5667
    throw p1
.end method

.method public setPubKeyBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5694
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->access$9700(Lcom/google/protobuf/ByteString;)V

    .line 5696
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->pubKey_:Ljava/lang/Object;

    .line 5697
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5692
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    .line 5408
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5307
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 0

    .line 5779
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    return-object p1
.end method
